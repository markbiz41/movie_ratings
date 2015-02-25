# == Schema Information
#
# Table name: genreizations
#
#  id         :integer          not null, primary key
#  movie_id   :integer
#  genre_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Genreization < ActiveRecord::Base
  belongs_to :movie
  belongs_to :genre
end
