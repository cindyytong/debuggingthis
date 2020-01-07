class UserCoursesController < ApplicationController 
    def create 
        @user_course = UserCourse.new(user_course_params)
        if @user_course.save 
            render json: @user_course
        else 
            render json: @user_course.errors.full_messages, status: 422
        end 
    end 

    def show 
        @user_course = UserCourse.find_by(id: params[:id])
        if @user_course 
            render json: @user_course
        else 
            render json: :not_found, status: 422
        end 
    end 

    # def complete # course is complete if the final lesson is completed 
    #     @user_course = UserCourse.find(params[:id])
    #     if @user_course.completed == true 
    #         render json: :course_already_completed
    #     else
    #         @user_course.
    #         render json: :course_completed
    #     end  
    # end 

    private 
    def user_course_params 
        params.require(:user_course).permit(:user_id, :course_id, :completed)
    end 
end 
