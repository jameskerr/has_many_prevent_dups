# Helper Gems
require 'awesome_print'
require 'byebug'

# Configure Rails Environment
ENV["RAILS_ENV"] = "test"
require File.expand_path("../../test/dummy/config/environment.rb",  __FILE__)

# Load support files
Dir[File.join(File.dirname(__FILE__), "support", "*.rb")].each {|file| require file}

# Migration stuff
ActiveRecord::Migrator.migrations_paths = [File.expand_path("../../test/dummy/db/migrate", __FILE__)]

# Rails testing
require "rails/test_help"

# Filter out Minitest backtrace while allowing backtrace from other libraries
# to be shown.
Minitest.backtrace_filter = Minitest::BacktraceFilter.new

# Load fixtures from the engine
if ActiveSupport::TestCase.respond_to?(:fixture_path=)
  ActiveSupport::TestCase.fixture_path = File.expand_path("../dummy/test/fixtures", __FILE__)
  ActionDispatch::IntegrationTest.fixture_path = ActiveSupport::TestCase.fixture_path
  ActiveSupport::TestCase.fixtures :all
end
