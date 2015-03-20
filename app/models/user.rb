# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string
#  email      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  admin      :boolean          default("false")
#

class User < ActiveRecord::Base
  has_many :movie_ratings
  has_many :movie_favorites
  has_many :movies, :through => :movie_favorites
end
