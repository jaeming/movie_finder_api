require 'sinatra'
require 'sinatra/base'
require 'sinatra/reloader'
require "sinatra/json"

get '/' do
  json "Welcome to Movie Finder API. POST a movie title to /movies to search."
end

post '/movies' do
  movie = JSON.parse(request.body.read)["movie"]
  json "Yep, I'm looking for #{movie} right now."
end
