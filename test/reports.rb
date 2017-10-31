require 'codecov'

SimpleCov.start { add_filter('test') }
SimpleCov.formatter = SimpleCov::Formatter::Codecov
