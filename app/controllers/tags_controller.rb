class TagsController < ApplicationController 
    def index 
        if params[:course_id]
            @tags = Course.find(params[:course_id]).tags
        else 
            @tags = Tag.all 
        end 
        render json: @tags
    end 

    def show 
        @tag = Tag.find_by(id: params[:id])
        if @tag 
            render json: @tag 
        else 
            render json: :tag_not_found, status: 422
        end 
    end 
end 
