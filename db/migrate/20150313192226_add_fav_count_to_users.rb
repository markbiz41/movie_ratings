class AddFavCountToUsers < ActiveRecord::Migration
  def change
    add_column :users, :movie_favorites_count, :integer
  end
end
