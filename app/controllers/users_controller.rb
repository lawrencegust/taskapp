class UsersController < ApplicationController

  before_filter :find_user, except: [:new, :create, :index]
  before_filter :authorize_user, except: [:new, :create]


  def find_user
    @user = User.find(session[:id])
    
  end

  def authorize_user
    logger.info "session[:id] = #{session[:id]}"
    logger.info "session[:id].class = #{session[:id].class}"
    logger.info "params[:id] = #{params[:id]}"
    logger.info "params[:id.class] = #{params[:id].class}"

    if session[:id].to_s != params[:id]
      redirect_to root_url, notice: "Can't do that"
    end
    
  end

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
    @user = User.find(session[:id])
    @tasks = Task.where(:user_id => @user.id)
    @teams = Team.where(:user_id => @user.id).all
    @projects = @user.projects

  end
end
