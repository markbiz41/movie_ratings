# == Schema Information
#
# Table name: genreizations
#
#  id         :integer          not null, primary key
#  movie_id   :integer
#  genre_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class GenreizationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
