class VendorUsersController < ApplicationController

  before_action :logged_in_user, only: [:show, :edit, :update]
  before_action :correct_user,   only: [:show, :edit, :update]

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
      redirect_to(root_url) unless current_user?(@user)
    end
end
