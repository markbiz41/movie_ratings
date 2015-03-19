class AddMovieReferenceToMovieFavorite < ActiveRecord::Migration
  def change
    add_reference :movie_favorites, :movie, index: true
    add_foreign_key :movie_favorites, :movies
  end
end
