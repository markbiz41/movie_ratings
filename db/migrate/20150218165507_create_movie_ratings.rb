class CreateMovieRatings < ActiveRecord::Migration
  def change
    create_table :movie_ratings do |t|
      t.references :person, index: true
      t.references :movie, index: true
      t.integer :rating

      t.timestamps null: false
    end
    add_foreign_key :movie_ratings, :people
    add_foreign_key :movie_ratings, :movies
  end
end
