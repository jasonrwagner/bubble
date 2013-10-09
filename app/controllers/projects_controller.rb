class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def show
  	@project = Project.first
  end

  def new
  	@project = Project.new
  end

  def create
    @project = Project.create(params[:name])
  end



  private

  def project_params
    params.require(:project).permit(:name)
  end
end
