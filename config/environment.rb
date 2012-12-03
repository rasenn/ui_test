# Load the rails application
require File.expand_path('../application', __FILE__)

#require 'encoding_patch'

Encoding.default_external = Encoding::UTF_8
Encoding.default_internal = Encoding::UTF_8

# Initialize the rails application
UiTest::Application.initialize!
