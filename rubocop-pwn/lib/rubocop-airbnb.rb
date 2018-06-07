require 'pathname'
require 'yaml'

# Load original rubocop gem
require 'rubocop'

require 'rubocop/pwn'
require 'rubocop/pwn/inject'
require 'rubocop/pwn/version'

RuboCop::PwnHealth::Inject.defaults!
