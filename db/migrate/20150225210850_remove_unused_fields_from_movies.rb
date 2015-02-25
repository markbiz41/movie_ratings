class RemoveUnusedFieldsFromMovies < ActiveRecord::Migration
  def change
    remove_column :movies, :poster_image, :string
    remove_column :movies, :rotten_tomato_link, :string
  end
end
