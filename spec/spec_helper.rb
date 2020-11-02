# frozen_string_literal: true

require "bundler/setup"
require "interactive_brokers"
require "impersonator"
require "rack/test"
require_relative "../vendor/TwsApi.jar"

ENV["RACK_ENV"] = "test"

require_relative "../app/app"

RSpec.configure do |config|
  config.include Rack::Test::Methods

  config.filter_run :focus
  config.run_all_when_everything_filtered = true
  config.disable_monkey_patching!
  config.warnings = true
  config.default_formatter = "doc" if config.files_to_run.one?

  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.include_chain_clauses_in_custom_matcher_descriptions = true
    c.syntax = :expect
  end

  # rspec-mocks config goes here. You can use an alternate test double
  # library (such as bogus or mocha) by changing the `mock_with` option here.
  config.mock_with :rspec do |mocks|
    # Prevents you from mocking or stubbing a method that does not exist on
    # a real object. This is generally recommended, and will default to
    # `true` in RSpec 4.
    mocks.verify_partial_doubles = true
  end

  Dir["#{__dir__}/../spec/support/**/*.rb"].sort.each { |file| require file }
end
