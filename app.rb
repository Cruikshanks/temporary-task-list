require 'sinatra'

# This require was only added to stop this warning from appearing in the output
# WARN: tilt autoloading 'tilt/erb' in a non thread-safe way;
# explicit require 'tilt/erb' suggested
require 'tilt/erb'

require 'require_all'

# load all ruby files in the directory "lib" and its subdirectories
require_all 'lib'

configure do
  # We enable sessions to allow us to place things in the session like flash
  # messages
  enable :sessions

  set :session_secret, SECRET ||= 'super secret'.freeze
end
