# == Schema Information
#
# Table name: movies
#
#  id                 :integer          not null, primary key
#  title              :string
#  plot               :text
#  release_year       :integer
#  poster_image       :string
#  rating             :string
#  rotten_tomato_link :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  person_id          :integer
#

class Movie < ActiveRecord::Base
  # Associations
  belongs_to :person
  has_many :movie_ratings, dependent: :destroy

  # Validations
  validates :title, presence: true
  validates :release_year, numericality: {greater_than: 1900}
  validates :rating, inclusion: { in: %w(G PG PG-13 R)}
  validates :title, uniqueness: true
  
  #Methods

  def avg_rating
    (movie_ratings.sum(:rating) / movie_ratings.count) if movie_ratings.any?
  end
end
