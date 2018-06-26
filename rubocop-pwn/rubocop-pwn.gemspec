
$LOAD_PATH.unshift File.expand_path('../lib', __FILE__)
require 'rubocop/pwn/version'

Gem::Specification.new do |spec|
  spec.name = 'rubocop-pwn'
  spec.summary = 'Custom code style checking for PwnHealth.'
  spec.description = <<-EOF
    A plugin for RuboCop code style enforcing & linting tool. It includes Rubocop configuration
    used at PwnHealth and a few custom rules that have cause internal issues at PwnHealth but are not
    supported by core Rubocop.
  EOF
  spec.authors = ['PwnHealth Engineering']
  spec.email = ['rubocop@pwn.com']
  spec.homepage = 'https://github.com/pwn/ruby'
  spec.license = 'MIT'
  spec.version = RuboCop::PwnHealth::VERSION
  spec.platform = Gem::Platform::RUBY
  spec.required_ruby_version = '>= 2.1'

  spec.require_paths = ['lib']
  spec.files = Dir[
    '{config,lib,spec}/**/*',
    '*.md',
    '*.gemspec',
    'Gemfile',
  ]

  spec.add_dependency('rubocop', '0.52.1')
  spec.add_dependency('rubocop-rspec', '1.22.1')
  spec.add_development_dependency('rspec', '~> 3.5')
end
