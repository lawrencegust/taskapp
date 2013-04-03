class TasksController < ApplicationController
  def new
    @task = Task.new
  end

  def create
    @task = Task.new(params[:task])

    respond_to do |format|
      if @task.save
        format.html {redirect_to tasks_url}
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

  def show
  end

  def index
    @tasks = Task.all
  end
end
