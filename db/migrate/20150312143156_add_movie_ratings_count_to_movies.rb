class AddMovieRatingsCountToMovies < ActiveRecord::Migration
  def change
    add_column :movies, :movie_ratings_count, :integer, default: 0

    Movie.reset_column_information
    Movie.all.each do |m|
      Movie.reset_counters(m.id, :movie_ratings)
    end

    # Alternatively, for better performance, this SQL can be used to update all the movies movie_ratings_counts
    # ActiveRecord::Base.connection.execute("update movies
    # set movie_ratings_count = counter_table.movie_ratings_counter
    # from (select movie_id, count(*) as movie_ratings_counter
    # from movie_ratings group by movie_id) as counter_table
    # where counter_table.movie_id = movies.id;")
  end
end
