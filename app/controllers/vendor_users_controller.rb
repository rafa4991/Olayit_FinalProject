class VendorUsersController < ApplicationController
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

  private

    def user_params
      params.require(:vendor_user).permit(:name, :ein,:username,:role,:telephone,:email, :password,:password_confirmation)
    end
end
