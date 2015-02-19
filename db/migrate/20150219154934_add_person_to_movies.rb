class AddPersonToMovies < ActiveRecord::Migration
  def change
    add_reference :movies, :person, index: true
    add_foreign_key :movies, :people
  end
end
