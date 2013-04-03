class SessionsController < ApplicationController
  def new

  end

  def create
  	user = User.find_by_email(params[:email])

  	if user.present? && user.authenticate(params[:password])
  		session[:id] = user.id
  		redirect_to user_url(user), notice: 'Success!'
  	else
  		redirect_to :back, notice: 'Nope, not this time.'
  	end
  end

  def destroy
  end
end
