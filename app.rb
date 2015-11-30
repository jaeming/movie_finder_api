require 'sinatra'
require 'sinatra/base'
require 'sinatra/reloader'
require "sinatra/json"
require 'rubygems'
require 'ruby-tmdb3'
load 'search.rb'

get '/' do
  json "Welcome to Movie Finder API."
end

get '/search' do
  json Search.for(params)
end
