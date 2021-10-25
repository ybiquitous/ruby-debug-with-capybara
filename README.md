# debug.gem & Capybara & RSpec

Chrome hang reproduction.

## Setup

```shell
bundle install
```

## ✅ Without debug.gem

```shell
bundle exec rspec
```

## ❌ With debug.gem

```shell
bundle exec rspec -r debug
```

Default: `RUBY_DEBUG_FORK_MODE=both`

## ✅ With debug.gem & `child` fork mode

```shell
RUBY_DEBUG_FORK_MODE=child bundle exec rspec -r debug
```

## ✅ With debug.gem & `parent` fork mode

```shell
RUBY_DEBUG_FORK_MODE=parent bundle exec rspec -r debug
```

## Change browser

Default: `chrome`

```shell
BROWSER=firefox bundle exec rspec
```
