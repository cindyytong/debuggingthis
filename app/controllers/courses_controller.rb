class CoursesController < ApplicationController 

    def index 
        if params[:id]
            @courses = User.find(:id).courses 
            render json: @courses
        else 
            @courses = Course.all 
            render json: @courses
        end 
    end 

    def show 
        @course = Course.find_by(id: params[:id])
        if @course 
            render json: @course 
        else 
            render json: :not_found, status: 422
        end 
    end 

    def create 
        @course = Course.new(course_params)
        if @course.save 
            render json: @course 
        else 
            render json: @course.errors.full_messages
        end 
    end 

    def destroy 
        course = Course.find(params[:id])
        if course.destroy 
            redirect_to :index 
        else 
            render json: :unable_to_delete
        end 
    end 

    private 
    def course_params 
        params.require(:course).permit(:title, :description, :img_url, :duration)
    end 
end 
