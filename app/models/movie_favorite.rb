# == Schema Information
#
# Table name: movie_favorites
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#  movie_id   :integer
#

class MovieFavorite < ActiveRecord::Base
  #VALIDATIONS
  validates :user_id, presence: true
  validates :movie_id, presence: true

  #ASSOCIATIONS
  belongs_to :user
  belongs_to :movie
end
