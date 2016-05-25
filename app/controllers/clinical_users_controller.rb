class ClinicalUsersController < ApplicationController
   

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

  private

    def clinicaluser_params
      params.require(:clinical_user).permit(:name, :ein,:username,:organizaionID,:email, :password,:password_confirmation)
                          
    end
end

