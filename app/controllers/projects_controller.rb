class ProjectsController < ApplicationController
  def index
    @projects = Project.all
    #@project.owner = Project.find(params[:owner])
  end

  def show
  	@project = Project.find(params[:id])
  end

  def new
  	@project = Project.new
  end

  def create
    @project = Project.new(project_params)
    @project.owner = current_user.id
    @project.user_email = User.find(current_user.id).email
      if @project.save
        flash[:success] = "Made a new tournament"
        redirect_to pages_path
      else
        render :new
      end
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])
    if  @project.update_attributes(params[:name])
      redirect_to @project
    else
      render 'edit'
    end
  end





  private

  def project_params
    params.require(:project).permit(:name, :owner, :user_email)
  end
end
