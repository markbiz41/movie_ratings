class MovieFavoriteController < ApplicationController

  def index
    @movie_favorite = MovieFavorite.all
  end

  def show
    @movie_favorite = Movie_favorite.all
  end

  def movie_favorite
    @movie_favorite = Movie_favorite.all
  end

  

end
