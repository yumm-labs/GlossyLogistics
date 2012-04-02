# This file is used by Rack-based servers to start the application.

require ::File.expand_path('../config/environment',  __FILE__)
run GlossyLogistics::Application

# Added for heroku
$stdout.sync = true  