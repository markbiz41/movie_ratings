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
#  movie_poster       :string
#

class Movie < ActiveRecord::Base
  RATINGS = %w(G PG PG-13 R)

  # Carrierwave
  mount_uploader :movie_poster, MoviePosterUploader

  # Associations
  has_many :movie_ratings, dependent: :destroy
  has_many :genreizations, dependent: :destroy
  has_many :genres, through: :genreizations

  # Validations
  validates :title, presence: true
  validates :release_year, numericality: {greater_than: 1900}
  validates :rating, inclusion: { in: RATINGS}
  validates :title, uniqueness: true

  #Methods

  def avg_rating
    (movie_ratings.sum(:rating) / movie_ratings.count) if movie_ratings.any?
  end
end
