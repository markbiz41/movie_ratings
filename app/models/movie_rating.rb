# == Schema Information
#
# Table name: movie_ratings
#
#  id         :integer          not null, primary key
#  movie_id   :integer
#  rating     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class MovieRating < ActiveRecord::Base
  belongs_to :movie

  validates :movie_id, presence: true
  validates :rating, presence: true
end
