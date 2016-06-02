class VendorUsersController < ApplicationController

  before_action :logged_in_user, only: [:show, :edit, :update]
  before_action :correct_user,   only: [:show, :edit, :update]
  before_action :admin_user,     only: :destroy

  def new
    @vendor = VendorUser.new
    
  end

  def show
    @vendor = VendorUser.find(params[:id])  
  end

  def create
    @user = VendorUser.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "Welcome OlayIT!"
      redirect_to @user
    else
      render 'new'
    end
  end
  
  def edit
  @user = VendorUser.find(params[:id])
  end

  def update
    @user = VendorUser.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:success] = "Profile updated"
      redirect_to @user
    else
      render 'edit'
    end
  end

  def destroy
    VendorUser.find(params[:id]).destroy
    flash[:success] = "User deleted"
    redirect_to users_url
  end

  private

    def user_params
      params.require(:vendor_user).permit(:name, :ein,:username,:role,:telephone,:email, :password,:password_confirmation)
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
      @user = VendorUser.find(params[:id])
      redirect_to(current_user) unless current_user?(@user)
    end

    def admin_user
      redirect_to(root_url) unless current_user.admin?
    end
end
