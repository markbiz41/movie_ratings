class RemovePersonIdFromMovies < ActiveRecord::Migration
  def change
    remove_column :movies, :person_id, :integer
  end
end
