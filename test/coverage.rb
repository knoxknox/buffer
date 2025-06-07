# frozen_string_literal: true

require 'simplecov'
require 'simplecov-cobertura'

SimpleCov.start { add_filter('test') }
SimpleCov.formatter = ENV['CI'] ? SimpleCov::Formatter::CoberturaFormatter : SimpleCov::Formatter::HTMLFormatter
