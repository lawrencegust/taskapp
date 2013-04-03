class TeamsController < ApplicationController
  
  def new
    @team = Team.new

  end

  def create
    @team = Team.new(params[:team])

    respond_to do |format|
      if @team.save
        format.html {redirect_to teams_url}
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
    @teams = Team.all
  end

  def show
  end
end
