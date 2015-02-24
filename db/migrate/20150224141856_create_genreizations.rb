class CreateGenreizations < ActiveRecord::Migration
  def change
    create_table :genreizations do |t|
      t.references :movie, index: true
      t.references :genre, index: true

      t.timestamps null: false
    end
    add_foreign_key :genreizations, :movies
    add_foreign_key :genreizations, :genres
  end
end
