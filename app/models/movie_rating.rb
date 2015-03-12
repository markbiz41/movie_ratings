# == Schema Information
#
# Table name: movie_ratings
#
#  id         :integer          not null, primary key
#  movie_id   :integer
#  rating     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#

class MovieRating < ActiveRecord::Base
  belongs_to :movie, counter_cache: true
  belongs_to :user

  validates :movie_id, presence: true
  validates :rating, presence: true
  validates :user_id, presence: true

  scope :for_user, ->(user) {where(user: user)}
  
end
