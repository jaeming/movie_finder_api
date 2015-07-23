class Search
  require 'dotenv'
  Dotenv.load

  Tmdb.api_key = ENV['MOVIE_DB']
  Tmdb.default_language = "en"

  def self.for(params)
    results = []
    movie = TmdbMovie.find("#{params.keys.first.to_s}": params[query], :limit => 5)
    movie.each { |m| results << {'title' => i.title, 'description' => i.overview} }
    end
    results
  end

end
