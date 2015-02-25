# == Schema Information
#
# Table name: movie_ratings
#
#  id         :integer          not null, primary key
#  movie_id   :integer
#  rating     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class MovieRatingTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
