# spec/rails_helper.rb

# This file is copied to spec/ when you run 'rails generate rspec:install'
require 'spec_helper'
ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'
require 'rails/test_help'
require 'rspec/rails'

# Add additional requires below this line. Rails is not loaded until this point!

# Configure RSpec
RSpec.configure do |config|
  # Remove this line if you're not using ActiveRecord or ActiveRecord fixtures
  config.fixture_path = "#{::Rails.root}/spec/fixtures"

  # If you're not using ActiveRecord, or you'd prefer not to run each of your examples within a transaction, remove the following line or assign false instead of true.
  config.use_transactional_fixtures = true

  # RSpec Rails can automatically mix in different behaviours to your tests based on their file location, for example enabling you to call `get :index` in controller specs directly. You can disable this behaviour by removing the line below, and instead explicitly tag your specs with their type, e.g.:
  #     RSpec.describe UsersController, type: :controller do
  #       # ...
  #     end
  config.infer_spec_type_from_file_location!

  # Filter lines from Rails backtraces.
  config.filter_rails_from_backtrace!

  # Arbitrary gems may be filtered via:
  # config.filter_gems_from_backtrace("gem name")

  config.fixture_path = ["#{::Rails.root}/spec/fixtures"]
end
