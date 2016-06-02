class ClinicalUsersController < ApplicationController

  before_action :logged_in_user, only: [:show, :edit, :update]
  before_action :correct_user,   only: [:show, :edit, :update]
  before_action :admin_user,     only: :destroy

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

  def destroy
    ClinicalUser.find(params[:id]).destroy
    flash[:success] = "User deleted"
    redirect_to users_url
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
      redirect_to(current_user) unless current_user?(@user)
   end

   def admin_user
      redirect_to(current_user) unless current_user.admin?
    end
end

