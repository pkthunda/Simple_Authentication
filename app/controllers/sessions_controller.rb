class SessionsController < ApplicationController

  def new
  end

  def login

  end

  def create
    teacher = Teacher.find_by_email(params[:email])
    if teacher
      session[:id] = teacher.id
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  def destroy
    session[:id] = nil
    redirect_to root_path, notice: "You logged out, boi."
  end

end
