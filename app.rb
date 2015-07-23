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
  results = Search.for(params)
  json results
end
