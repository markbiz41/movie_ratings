class SessionController < ApplicationController
  def signup

    user = User.new(name: params[:name], email: params[:email], password: params[:password], password_confirmation: params[:password_confirmation])
    if user.save
      session[:user_id] = user.id
      flash[:notice] = 'You have successfully signed up.'
    else
      flash[:error] = "We were unable to sign you up. #{user.errors.full_messages.join('. ')}"
    end
    redirect_to root_path

  end

  def signin
    user = User.find_by(email: params[:email]).try(:authenticate, params[:password])
    if user
      session[:user_id] = user.id
      flash[:notice] = 'You have been signed in!'
    else
      flash[:warning] = 'Not able to log you in with those credentials.'
    end
    redirect_to root_path
  end

  def signout
    session[:user_id] = nil
    flash[:notice] = 'You have been signed out.'
    redirect_to root_path
  end
end
