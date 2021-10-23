RSpec.describe "Foo", type: :system do
  it "foo" do
    visit "/"
  end

  it "bar", screen_size: [400, 800] do
    visit "/"
  end
end
