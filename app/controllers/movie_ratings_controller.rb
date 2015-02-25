class MovieRatingsController < ApplicationController
  before_action :set_movie_rating, only: [:show, :edit, :update, :destroy]
  before_action :set_movies_for_select, only: [:new, :edit, :update, :create]

  # GET /movie_ratings
  # GET /movie_ratings.json
  def index
    @movie_ratings = MovieRating.where(user: @current_user)
  end

  # GET /movie_ratings/1
  # GET /movie_ratings/1.json
  def show
  end

  # GET /movie_ratings/new
  def new
    @movie_rating = MovieRating.new
    @movie_rating.movie_id = params[:movie_id]
  end

  # GET /movie_ratings/1/edit
  def edit
  end

  # POST /movie_ratings
  # POST /movie_ratings.json
  def create
    @movie_rating = MovieRating.new(movie_rating_params)
    @movie_rating.user = @current_user

    respond_to do |format|
      if @movie_rating.save
        format.html { redirect_to @movie_rating, notice: 'Movie rating was successfully created.' }
        format.json { render :show, status: :created, location: @movie_rating }
      else
        format.html { render :new }
        format.json { render json: @movie_rating.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /movie_ratings/1
  # PATCH/PUT /movie_ratings/1.json
  def update
    respond_to do |format|
      if @movie_rating.update(movie_rating_params)
        format.html { redirect_to @movie_rating, notice: 'Movie rating was successfully updated.' }
        format.json { render :show, status: :ok, location: @movie_rating }
      else
        format.html { render :edit }
        format.json { render json: @movie_rating.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /movie_ratings/1
  # DELETE /movie_ratings/1.json
  def destroy
    @movie_rating.destroy
    respond_to do |format|
      format.html { redirect_to movie_ratings_url, notice: 'Movie rating was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_movies_for_select
      @movies = Movie.all.collect {|m| [m.title, m.id]}
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_movie_rating
      @movie_rating = MovieRating.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def movie_rating_params
      params.require(:movie_rating).permit(:movie_id, :rating, :user_id)
    end
end
