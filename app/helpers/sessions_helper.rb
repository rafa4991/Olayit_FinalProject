module SessionsHelper

	def log_in(user)
    session[:user_id] = user.id 
  end

  def current_user
    if !VendorUser.find_by(id: session[:user_id]).nil?
    @current_user ||= VendorUser.find_by(id: session[:user_id])
    else
    @current_user ||= ClinicalUser.find_by(id: session[:user_id])
    end
  end 

  def isvendor
    if !VendorUser.find_by(id: session[:user_id]).nil?
    return true
    else
    return false
    end
  end

  def current_user?(user)
    user == current_user
  end


  def logged_in?
    !current_user.nil? 
  end

  def log_out
    session.delete(:user_id)
    @current_user = nil
  end

  # Redirects to stored location (or to the default).
  def redirect_back_or(default)
    redirect_to(session[:forwarding_url] || default)
    session.delete(:forwarding_url)
  end

  # Stores the URL trying to be accessed.
  def store_location
    session[:forwarding_url] = request.url if request.get?
  end
  
end
