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

  end
end
