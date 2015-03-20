class CreateMovieFavorites < ActiveRecord::Migration
  def change
    create_table :movie_favorites do |t|
      t.string :movie_name

      t.timestamps null: false
    end
  end
end
