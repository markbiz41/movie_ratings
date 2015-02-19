class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.text :plot
      t.integer :release_year
      t.string :poster_image
      t.string :rating
      t.string :rotten_tomato_link

      t.timestamps null: false
    end
  end
end
