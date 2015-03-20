class MoviesController < ApplicationController
  before_action :set_movie, only: [:show, :edit, :update, :destroy, :favorite, :unfavorite]

  def search
    @search = params[:q]
    @movies = Movie.where("title like ?", "%#{@search}%").page(params[:page]).per(15)
    render 'movies/index'
  end

  # GET /movies
  # GET /movies.json
  def index
    @movies = Movie.page(params[:page]).per(15)
  end

  # GET /movies/1
  # GET /movies/1.json
  def show
  end

  # GET /movies/new
  def new
    @movie = Movie.new
  end

  # GET /movies/1/edit
  def edit
  end

  # POST /movies
  # POST /movies.json
  def create
    @movie = Movie.new(movie_params)

    respond_to do |format|
      if @movie.save
        format.html { redirect_to @movie, notice: 'Movie was successfully created.' }
        format.json { render :show, status: :created, location: @movie }
      else
        format.html { render :new }
        format.json { render json: @movie.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /movies/1
  # PATCH/PUT /movies/1.json
  def update
    respond_to do |format|
      if @movie.update(movie_params)
        format.html { redirect_to @movie, notice: 'Movie was successfully updated.' }
        format.json { render :show, status: :ok, location: @movie }
      else
        format.html { render :edit }
        format.json { render json: @movie.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /movies/1
  # DELETE /movies/1.json
  def destroy
    @movie.destroy
    respond_to do |format|
      format.html { redirect_to movies_url, notice: 'Movie was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def favorite
    # Add movie title to Movie_Favorite here
    MovieFavorite.find_or_create_by(user: current_user, movie: @movie)
    redirect_to @movie
  end

  def unfavorite
    # Delete movie title from Movie_Favorite here
    MovieFavorite.find_by(user: current_user, movie: @movie).destroy
    redirect_to @movie
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movie
      @movie = Movie.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def movie_params
      params.require(:movie).permit(:title, :plot, :release_year, :poster_image, :rating, :rotten_tomato_link, :movie_poster, :movie_poster_cache, genre_ids: [])
    end
end
