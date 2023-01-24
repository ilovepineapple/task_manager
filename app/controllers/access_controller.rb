# frozen_string_literal: true

# aplication access control controller
class AccessController < ApplicationController
  skip_before_action :confirm_logged_in, only: %i[new create]

  def menu; end

  def new
    return unless logged_in?

    redirect_to(menu_path)
  end

  def create
    logger.info("*** Login User #{params[:username]}")
    # do login process here
    cookies[:username] = params[:username]
    session[:user_id] = 1483
    flash[:notice] = 'Log in successful'
    redirect_to(menu_path)
  end

  def destroy
    logger.info("*** Logout User #{cookies[:username]}")
    # do logout process here
    cookies[:username] = nil
    session[:user_id] = nil
    flash[:notice] = 'Logged out'
    redirect_to(login_path)
  end
end
