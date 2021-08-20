require 'codecov'
require 'simplecov'
require 'minitest/autorun'
require_relative '../lib/buffer'

SimpleCov.start { add_filter('test') }
SimpleCov.formatter = ENV['CI'] ? SimpleCov::Formatter::Codecov : SimpleCov::Formatter::HTMLFormatter
