require 'sinatra'
require 'sinatra/base'
require 'sinatra/reloader'
require "sinatra/json"

get '/' do
  msg = {text: 'Welcome to Movie Finder API'}
  json msg
end
