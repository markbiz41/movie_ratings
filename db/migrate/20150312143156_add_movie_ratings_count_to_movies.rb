class AddMovieRatingsCountToMovies < ActiveRecord::Migration
  def change
    add_column :movies, :movie_ratings_count, :integer, default: 0

    Movie.reset_column_information
    Movie.all.each do |m|
      Movie.reset_counters(m.id, :movie_ratings)
    end
  end
end
