class AddUserToMovieFavorites < ActiveRecord::Migration
  def change
    add_column :movie_favorites, :user, :string
  end
end
