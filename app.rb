require 'sinatra'
require 'sinatra/base'
require 'sinatra/reloader'
require "sinatra/json"
require 'rubygems'
require 'ruby-tmdb3'
require 'dotenv'
Dotenv.load

Tmdb.api_key = ENV['MOVIE_DB']
Tmdb.default_language = "en"

get '/' do
  json "Welcome to Movie Finder API."
end
