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
#  movie_poster       :string
#

require 'test_helper'

class MovieTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
