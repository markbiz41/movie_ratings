# == Schema Information
#
# Table name: movies
#
#  id                  :integer          not null, primary key
#  title               :string
#  plot                :text
#  release_year        :integer
#  rating              :string
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  movie_poster        :string
#  movie_ratings_count :integer          default("0")
#

class Movie < ActiveRecord::Base
  RATINGS = %w(G PG PG-13 R)

  # Scopes
  scope :rated_r, -> {where(rating: 'R').limit(3)}
  scope :rated_g, -> {where(rating: 'G')}
  scope :rated_pg, -> {where(rating: 'PG')}
  scope :rated_pg13, -> {where(rating: 'PG-13')}

  # Carrierwave
  mount_uploader :movie_poster, MoviePosterUploader

  # Associations
  has_many :movie_ratings, dependent: :destroy
  has_many :genreizations, dependent: :destroy
  has_many :genres, through: :genreizations
  has_many :movie_favorites, dependent: :destroy
  has_many :users, :through => :movie_favorites

  # Validations
  validates :title, presence: true
  validates :release_year, numericality: {greater_than: 1900}
  validates :rating, inclusion: { in: RATINGS}
  validates :title, uniqueness: true

  #Methods

  def avg_rating
    (movie_ratings.sum(:rating) / movie_ratings.count) if movie_ratings.any?
  end

  def favorite_use(current_user)
    movie_favorites.find_by(user: current_user)

  end
end
