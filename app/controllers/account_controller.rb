class AccountController < ApplicationController


  def index
    @movie_favorites = MovieFavorite.where(user: current_user)
    @movies = @movie_favorites.page(params[:page]).per(15)
  end

  def edit
  end

  def update
    if current_user.update(user_params)
      redirect_to account_edit_path, notice: 'Your account has been updated.'
    else
      render :edit
    end
  end

  private

  # Never trust parameters from the scary internet, only allow the white list through.
  def user_params
    params.require(:user).permit(:name, :email)
  end

end
