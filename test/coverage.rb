require 'codecov'
require 'simplecov'

SimpleCov.start { add_filter('test') }
SimpleCov.formatter = SimpleCov::Formatter::Codecov
