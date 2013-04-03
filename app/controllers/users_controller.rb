class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])

    respond_to do |format|
      if @user.save 
        format.html { redirect_to root_url}
        format.js
      end
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def index
  end

  def show
  end
end
