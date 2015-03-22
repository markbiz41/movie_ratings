class CreateMovieFavorites < ActiveRecord::Migration
  def change
    create_table :movie_favorites do |t|
      t.references :user, index: true
      t.references :movie, index: true

      t.timestamps null: false
    end
    add_foreign_key :movie_favorites, :users
    add_foreign_key :movie_favorites, :movies
  end
end
