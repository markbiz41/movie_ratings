class Genreization < ActiveRecord::Base
  belongs_to :movie
  belongs_to :genre
end
