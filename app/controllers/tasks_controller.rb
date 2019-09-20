class TasksController < ApplicationController
  before_action :authenticate_user!
  def index
    @task = Task.all
    @user = User.all
    
  end
  def new
    @user = User.all
    @task = Task.new
  end

  def show
    @task = Task.find(params[:id])
  end

  def create
    # render plain: params[:tasks].inspect
    @task = Task.new(task_params)
    if @task.save
      redirect_to dashboard_index_path
    else 
      render :new
    end
  end
  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    if @task.update_attributes(task_params)
       redirect_to dashboard_index_path
    else 
      render :edit
    end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to dashboard_index_path
  end

  private def task_params

  params.require(:task).permit(:subject, :description, :status, :created_by, :assignee, )

  end
end
