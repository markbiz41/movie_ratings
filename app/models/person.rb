# == Schema Information
#
# Table name: people
#
#  id         :integer          not null, primary key
#  name       :string
#  birthdate  :date
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Person < ActiveRecord::Base
  has_many :movie_ratings
  validates :name, presence: true
end
