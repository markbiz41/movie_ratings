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
  belongs_to :user, counter_cache: true
end
