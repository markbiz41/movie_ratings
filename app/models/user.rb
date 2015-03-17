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
  has_secure_password

  validates :password, length: { minimum: 8 }

  has_many :movie_ratings
end
