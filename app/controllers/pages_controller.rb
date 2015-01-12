class PagesController < ApplicationController
  
  #before_filter :authenticate_user!

  def index
  	  @projects = Project.all
      @profile = Profile.all
  end
  
end
