class UsersController < ApplicationController 
    def create 
        @user = User.new(user_params)
        if @user.save 
            render json: @user, status: :created 
        else 
            render json: @user.errors.full_messages, status: :unprocessable_entity
        end 
    end
    
    def show 
        @user = User.find_by(id: params[:id])
        if @user 
            render json: @user 
        else
            render json: :not_found, status: 422 
        end 
    end 

    def update 
        user = User.find_by(id: params[:id])
        if user.update(user_params) 
            render json: user 
        else 
            render json: :unprocessable_entity, status: 422
        end 
    end 

    private 
    def user_params
        params.require(:user).permit(:email, :first_name, :last_name, :user_role, :status, :password) 
    end 
end 
