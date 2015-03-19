# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string
#  email           :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  admin           :boolean          default("false")
#  password_digest :string
#

class User < ActiveRecord::Base
  has_secure_password

#VALIDATIONS
  validates :password, length: { minimum: 8 }

#ASSOCATIONS
  has_many :movie_ratings
  has_many :movie_favorites, dependent: :destroy
end
