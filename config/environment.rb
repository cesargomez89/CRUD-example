# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
CRUDExample::Application.initialize!

config.gem "authlogic"
config.gem "declarative_authorization", :source => "http://gemcutter.org"
