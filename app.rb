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
get '/search' do
  query = params.keys.first.to_s
  search_term = params[query]
  results = []
  movie = TmdbMovie.find("#{query}": search_term, :limit => 5)
  movie.each do |i|
    movie_summary = {'title' => i.title, 'description' => i.overview}
    results << movie_summary
  end
  json results
end
