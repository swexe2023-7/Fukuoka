require 'bcrypt'
class SessionController < ApplicationController
  def main
    if current_user != nil
      render "main"
    else
      render "login"
    end
  end

  def login
    tourist = Tourist.find_by(uid: params[:uid])
    if tourist && BCrypt::Password.new(tourist.pass) == params[:pass]
      session[:login_uid] = params[:uid]
      redirect_to root_path
    else
      render "error"
    end
  end

  def logout
      session.delete(:login_uid)
    redirect_to root_path
  end
end
