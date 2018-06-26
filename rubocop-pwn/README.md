# RuboCop PwnHealth

PwnHealth specific analysis for [RuboCop](https://github.com/bbatsov/rubocop).

It contains PwnHealth's internally used configuration for
[RuboCop](https://github.com/bbatsov/rubocop) and
[RuboCop RSpec](https://github.com/backus/rubocop-rspec). It also includes a handful custom rules
that are not currently addressed by other projects.

## Installation

Just put this in your `Gemfile` it depends on the appropriate version of rubocop and rubocop-rspec.

```
gem 'rubocop-pwn'
```

## Usage

You need to tell RuboCop to load the PwnHealth extension. There are three
ways to do this:

### RuboCop configuration file
First Create a new file `.rubocop_pwn.yml` in the same directory as your `.rubocop.yml`
this file should contain
```
require:
  - rubocop-pwn
```

Next add the following to `.rubocop.yml`
or add before `.rubocop_todo.yml` in your existin `inherit_from`

```
inherit_from:
  - .rubocop_pwn.yml
  - .rubocop_todo.yml
```

You need to inherit `.rubocop_pwn.yml` from another file becuase Rubocop order of operations.
It runs `inherit_from` before `require` commands. If the configuration is not in a separate file
you could potentially experience a bunch of warnings from `.rubocop_todo.yml` for non-existant
`PwnHealth` rules.

Now you can run `rubocop` and it will automatically load the RuboCop PwnHealth
cops together with the standard cops.

### Command line

```bash
rubocop --require rubocop-pwn
```

## The Cops

All cops are located under
[`lib/rubocop/cop/pwn`](lib/rubocop/cop/pwn), and contain
examples/documentation.

In your `.rubocop.yml`, you may treat the PwnHealth cops just like any other
cop. For example:

```yaml
PwnHealth/PhraseBundleKeys:
  Exclude:
    - spec/my_poorly_named_spec_file.rb
```

