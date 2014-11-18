class ProfilesController < ApplicationController

  def index
    @profile = Profile.all
  	#@users = User.all
  end

  

  def show
  	@profile = Profile.find(params[:id])
  end

  def edit
  	@profile = Profile.find(params[:id])
  end

  def new
  	@profile = Profile.new
  end

def create
    @profile = Profile.new(profile_params)
      if @profile.save
        flash[:success] = "New Profile"
        redirect_to pages_path
      else
        render :new
      end
end



  private

  def profile_params
    params.require(:profile).permit(:first_name, :last_name, :likes, :about_me)
  end
end
