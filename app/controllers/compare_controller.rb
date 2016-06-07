class CompareController < ApplicationController

   def add
    id = params[:id] 
    compare[id] ? compare[id] = compare[id] + 1 : compare[id] = id
    flash[:notice] = "Added to Compare"
    redirect_to :back
  end
  
  def clearCompare
    session[:compare] = nil
    redirect_to action: :index
  end
  
  def index
    @compare = compare
  end
 
end