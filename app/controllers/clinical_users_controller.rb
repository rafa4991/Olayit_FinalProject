class ClinicalUsersController < ApplicationController

  before_action :logged_in_user, only: [:edit, :update]
  before_action :correct_user,   only: [:edit, :update]

  def new
    @clinicaluser = ClinicalUser.new
  end

 

  def show
    @clinicaluser = ClinicalUser.find(params[:id])  
  end

  def create
    @clinicaluser = ClinicalUser.new(clinicaluser_params)
    if @clinicaluser.save
      log_in @clinicaluser
      flash[:success] = "Welcome OlayIT!"
      redirect_to @clinicaluser
    else
      render 'new'
    end
  end

  def edit
  @user = ClinicalUser.find(params[:id])
  end

  def update
    @user = ClinicalUser.find(params[:id])
    if @user.update_attributes(clinicaluser_params)
      flash[:success] = "Profile updated"
      redirect_to @user
    else
      render 'edit'
    end
  end

  private

    def clinicaluser_params
      params.require(:clinical_user).permit(:name, :ein,:username,:organizaionID,:email, :password,:password_confirmation)
                          
    end

    # Confirms a logged-in user.
    def logged_in_user
      unless logged_in?
        store_location
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
    end

    # Confirms the correct user.
    def correct_user
      @user = ClinicalUser.find(params[:id])
      redirect_to(root_url) unless current_user?(@user)
   end
end

