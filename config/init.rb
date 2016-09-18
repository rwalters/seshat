require 'sinatra'
require 'sinatra/base'
require 'sinatra/reloader'
require 'sinatra/flash'


Dir[File.dirname(__FILE__) + "/../web/actions/**"].each do |action|
  require action
end

require './web/routes'
