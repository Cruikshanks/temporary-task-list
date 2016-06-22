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

get '/' do
  version = File.read('VERSION').strip
  <<-ENDRESPONSE
    Temporary Task List: #{version}
    Ruby:                #{RUBY_VERSION}
    Rack:                #{Rack::VERSION}
    Sinatra:             #{Sinatra::VERSION}
  ENDRESPONSE
end

get '/tasks' do
  response = ''
  session_tasks.list.each_with_index do |val, index|
    response = "#{response}[#{index}] #{val}\n"
  end
  response
end

post '/tasks/:task' do
  tasks = session_tasks
  tasks.add(params[:task])
  session[:tasks] = tasks

  redirect('/tasks')
end

get '/task/:id' do
  id = params[:id].to_i
  "[#{id}] #{session_tasks.get(id)}\n"
end
