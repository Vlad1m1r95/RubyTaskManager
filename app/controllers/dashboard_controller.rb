class DashboardController < ApplicationController
  before_action :authenticate_user!

  def index
    
    @task = Task.all
    @user = User.all
    @comment = Comment.all
   
    
   


  end
  def create
    @task = Task.find(params[:task_id])
    @comment = @task.comments.create(comment_params)
    redirect_to task_path(@task)
  end

  private def comment_params
    params.require(:comment).permit(:name , :description)
  end
  
  
  
end
