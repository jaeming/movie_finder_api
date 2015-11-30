class Search
  require 'dotenv'
  Dotenv.load

  Tmdb.api_key = ENV['MOVIE_DB']
  Tmdb.default_language = "en"

  def self.for(params)
    movie = TmdbMovie.find(title: params[:title], :limit => 5)
    movie.map { |m| {'title' => m.title, 'description' => m.overview} }
  end

end
