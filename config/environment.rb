# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Logger
Rails.logger = Logger.new(STDOUT)

# Initialize the Rails application.
Rails.application.initialize!
