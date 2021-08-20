require 'codecov'

SimpleCov.start { add_filter('test') }
SimpleCov.formatter = ENV['CI'] ? SimpleCov::Formatter::Codecov : SimpleCov::Formatter::HTMLFormatter
