require './config/init'
require './lib/calculator'

class Main < Sinatra::Base
  enable :sessions
  register Sinatra::Flash
  use Rack::Session::Cookie, key: "rack.session", expire_after: 2592000

  configure do
    set :app_file, __FILE__
    set :views, "#{File.dirname(__FILE__)}/views"
    set :public_folder, "#{File.dirname(__FILE__)}/public"
  end

  configure :development do
    enable :logging, :dump_errors, :raise_errors
    register Sinatra::Reloader
  end

  register Web::Routes
end

