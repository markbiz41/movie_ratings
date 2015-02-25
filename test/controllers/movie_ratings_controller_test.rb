require 'test_helper'

class MovieRatingsControllerTest < ActionController::TestCase
  setup do
    @movie_rating = movie_ratings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:movie_ratings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create movie_rating" do
    assert_difference('MovieRating.count') do
      post :create, movie_rating: {  }
    end

    assert_redirected_to movie_rating_path(assigns(:movie_rating))
  end

  test "should show movie_rating" do
    get :show, id: @movie_rating
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @movie_rating
    assert_response :success
  end

  test "should update movie_rating" do
    patch :update, id: @movie_rating, movie_rating: {  }
    assert_redirected_to movie_rating_path(assigns(:movie_rating))
  end

  test "should destroy movie_rating" do
    assert_difference('MovieRating.count', -1) do
      delete :destroy, id: @movie_rating
    end

    assert_redirected_to movie_ratings_path
  end
end
