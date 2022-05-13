ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'
require 'rails/test_help'
require 'capybara/rails'

Capybara.server = :puma, { Silent: true } # To clean up your test output

class ActiveSupport::TestCase
  # Run tests in parallel with specified workers
  parallelize(workers: :number_of_processors)

  include FactoryBot::Syntax::Methods

  teardown do
    messages = page.driver.browser.manage.logs.get(:browser).
               map { |log| "[#{log.level}] #{log.message}" }.
               reject { |msg| msg.include?('Please use the new visit event callbacks instead') || msg.include?('1038223') }


    assert_empty(messages)
  end

  # Add more helper methods to be used by all tests here...
end
