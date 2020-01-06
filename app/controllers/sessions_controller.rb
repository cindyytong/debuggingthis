class SessionsController < ApplicationController 
    def new 
        render json :login_here
    end 

    def create 
        user = User.find_by_credentials(params[:user][:email], params[:user][:password])

        if user.nil? 
            flash.now[:errors] = ["Invalid credentials."]
            render json: flash.now[:errors]
        elsif 
            login!(user)
            render json: :logged_in
        end 
    end 

    def destroy 
        current_user.reset_session_token! 
        session[:session_token] = nil
        render json :logged_out
    end 

end 
