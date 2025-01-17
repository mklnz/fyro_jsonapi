require 'bundler/setup'
require 'byebug'
require 'fyro_jsonapi'

# Dummy Rails app
ENV['RAILS_ENV'] = 'test'
require_relative './dummy/config/environment.rb'
load "#{Rails.root}/db/schema.rb"

require 'rspec/rails'

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = '.rspec_status'

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end

  config.include Rails.application.routes.url_helpers
end
