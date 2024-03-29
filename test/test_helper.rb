ENV["RAILS_ENV"] ||= "test"
require_relative "../config/environment"
require "rails/test_help"

class ActiveSupport::TestCase
  include FactoryBot::Syntax::Methods
  # Run tests in parallel with specified workers
  parallelize(workers: :number_of_processors)

  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  # fixtures :all

  # Add more helper methods to be used by all tests here...
  def system_test_signin(user)
    visit '/sign_in'
    fill_in "Email", with: user.email
    fill_in "Password", with: 'password'
    click_on "Submit"
    sleep 0.25 # tests were occasionally failing without this
  end
end
