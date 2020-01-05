class LessonsController < ApplicationController 
    def index 
        @lessons = Lesson.where(course_id: params[:course_id])
        if @lessons.empty?
            render json: :no_lessons_found, status: 422
        else 
            render json: @lessons
        end 
    end 

    def show 
        @lesson = Lesson.find_by(id: params[:id])
        @lesson ? (render json: @lesson) : (render json: :no_lesson_found, status: 422)  
    end 
end 
