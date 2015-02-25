class RemovePersonIdFromMovieRatings < ActiveRecord::Migration
  def change
    remove_column :movie_ratings, :person_id, :integer
  end
end
