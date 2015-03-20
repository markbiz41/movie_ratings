class RemoveMovieNameFromMovieFavorites < ActiveRecord::Migration
  def change
    change_table :movie_favorites do |t|
      t.remove :movie_name
      t.remove :user
    end
  end
end
