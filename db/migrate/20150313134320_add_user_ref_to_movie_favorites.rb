class AddUserRefToMovieFavorites < ActiveRecord::Migration
  def change
    add_reference :movie_favorites, :user, index: true
    add_foreign_key :movie_favorites, :users
  end
end
