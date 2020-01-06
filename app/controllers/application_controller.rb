class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

    helper_method :current_user 
    helper_method :logged_in? 

    def require_no_user! # for non logged in users 
        redirect_to courses_url if !current_user
    end 

    private

    def current_user 
        return nil unless session[:session_token]
        @current_user ||= User.find_by(session_token: session[:session_token])
    end 

    def logged_in? 
        !!current_user 
    end 

    def login!(user)
        session[:session_token] = user.reset_session_token! 
    end 

    def logout!(user)
        current_user.reset_session_token! 
        session[:session_token] = nil 
    end 

    def require_user! # for logged in users
        redirect_to new_session_url if current_user.nil?
    end 
end
