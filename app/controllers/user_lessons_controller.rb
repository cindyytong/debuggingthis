class UserLessonsController < ApplicationController 
    def create  # start a lesson 
        @user_lesson = UserLesson.new(user_lesson_params)
        if @user_lesson.save 
            render json: @user_lesson
        else 
            render json: @user_lesson.errors.full_messages, status: 422
        end 
    end 

    def show 
        @user_lesson = UserLesson.find_by(id: params[:id])
        if @user_lesson 
            render json: @user_lesson
        else 
            render json: :not_found, status: 422
        end 
    end 

    def complete # click the complete button on a lesson 
        @user_lesson = UserLesson.find(params[:id])
        if @user_lesson.completed == true 
            render json: :lesson_already_completed
        else 
            @user_lesson.complete_lesson 
            render json: @user_lesson
        end  
    end 

    private 

    def user_lesson_params 
        params.require(:user_lesson).permit(:user_id, :lesson_id, :completed, :final_lesson)
    end 
end 
