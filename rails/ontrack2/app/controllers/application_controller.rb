class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

helper_method :current_user		#steht auch in den views zur Verfügung (Eierlegende Wollmilchsau)
															#Wenn man diese Methode nur in application_helper angelegt wird, dann nur in views verwendbar!
															
def current_user
	@current_user = User.find_by(session[:user_id])
	if session[:user_id] 
	end
	
end

def require_signin
	unless current_user
		redirect_to login_path, alert: "Erst einloggen!"
	end
end


end
