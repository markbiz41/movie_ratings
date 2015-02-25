class AddUserReferenceToMovieRatings < ActiveRecord::Migration
  def change
    add_reference :movie_ratings, :user, index: true
    add_foreign_key :movie_ratings, :users
  end
end
