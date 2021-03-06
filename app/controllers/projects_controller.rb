class ProjectsController < ApplicationController

  def index
    @projects = Project.all
    @users = User.all
    #@project.owner = Project.find(params[:owner])
  end

  def show
  	@project = Project.find(params[:name])
  end

  def new
  	@project = Project.new
  end

  def create
    @project = Project.create(project_params)
    # @project.owner = current_user.id
    # @project.user_email = User.find(current_user.id).email
    if @project.save
      flash[:success] = "Made a new tournament"
      redirect_to pages_path
    else
      render :new
    end
  end

  def edit
    @project = Project.find(params[:id])
    @project_start_date = @project.start_date.to_s
  end

  def update
    @project = Project.find(params[:id])
    if  @project.update_attributes(project_params)
      redirect_to pages_path
    else
      render 'edit'
    end
  end

  private

  def project_params
    params.require(:project).permit(:name, :owner, :user_email, :description, :start_date, :end_date)
  end
end
