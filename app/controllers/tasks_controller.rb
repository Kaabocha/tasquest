class TasksController < ApplicationController
  before_action :set_prototype, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :move_to_index, only: [:edit, :update, :destroy]
  
  def index
    @tasks = Task.all.includes(:user).order("created_at DESC")
  end
  
  def new
    @task = Task.new
  end
  
  def create
    @task = Task.new(Task_params)
    if @task.save
      redirect_to root_path
    else
      render :new
    end
  end
  
  def show
    @comment = Comment.new
    @comments = @task.comments.includes(:user)
  end
  
  def update
    if @task.update(task_params)
      redirect_to task_path
    else
      render :edit
    end
  end
  
  def destroy
    if @task.destroy
      redirect_to root_path
    else
      render :index
    end
  end
  
  private
  
  def task_params
    params.require(:task).permit(:title, :catch_copy, :concept, :image).merge(user_id: current_user.id)
  end
  
  def set_task
    @task = Task.find(params[:id])
  end
  
  def move_to_index
    redirect_to root_path unless current_user == @task.user
  end
end
