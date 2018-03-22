class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by_name(params[:session][:name])
    if @user
      session[:id] = @user.id
      session[:name] = @user.name
      flash[:success] = "Hello, #{@user.name}."
      redirect_to @user
    else
      flash[:warning] = "User not found."
      render 'new'
    end
  end

  def destroy

  end

end
