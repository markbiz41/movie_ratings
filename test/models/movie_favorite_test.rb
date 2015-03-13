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

require 'test_helper'

class MovieFavoriteTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
