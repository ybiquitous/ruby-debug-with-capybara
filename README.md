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

See also: <https://gist.github.com/nishio-dens/c64245eb143e9c3b22b9d7b9f93f25d2>
