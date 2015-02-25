# == Schema Information
#
# Table name: movies
#
#  id           :integer          not null, primary key
#  title        :string
#  plot         :text
#  release_year :integer
#  rating       :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  movie_poster :string
#

require 'test_helper'

class MovieTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
