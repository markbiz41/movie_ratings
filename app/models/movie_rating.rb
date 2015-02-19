# == Schema Information
#
# Table name: movie_ratings
#
#  id         :integer          not null, primary key
#  person_id  :integer
#  movie_id   :integer
#  rating     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class MovieRating < ActiveRecord::Base
  belongs_to :person
  belongs_to :movie
end
