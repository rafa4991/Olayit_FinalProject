class SessionsController < ApplicationController
  layout 'login'
  def new
  end

  def newVendor
  end

  def newclient
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to user
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def createVendor
    user = VendorUser.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to user
      #cookies[:type]={ value: "Vendor", expires: 15.minutes}
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def createHGO
    user = ClinicalUser.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to user
      #cookies[:type]={ value: "Vendor", expires: 15.minutes}
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    log_out
    #cookies[:type]={ value: "None", expires: 5.minutes}
    redirect_to root_url
  end

  
end
