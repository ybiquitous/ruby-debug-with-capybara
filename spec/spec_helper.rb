require "capybara/rspec"
require "webdrivers"

BROWSER = ENV["BROWSER"]&.to_sym || :chrome

Capybara.server = :puma

Capybara.app = proc do
  [
    200,
    { "Content-Type" => "text/html" },
    ["Hello, Rack"]
  ]
end

RSpec.configure do |config|
  config.before :each, type: :system do |example|
    screen_size = example.metadata[:screen_size]
    if screen_size
      Capybara.session_name = screen_size.join("x")
    end

    Capybara.register_driver :foo do |app|
      Capybara::Selenium::Driver.new(app, browser: BROWSER).tap do |driver|
        if screen_size
          driver.browser.manage.window.size = Selenium::WebDriver::Dimension.new(*screen_size)
        end
      end
    end

    Capybara.current_driver = :foo
  end

  config.after :each do
    sleep 3
  end
end
