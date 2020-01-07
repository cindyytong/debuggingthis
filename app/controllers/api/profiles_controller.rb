class ProfilesController < ApplicationController 
    def show 
        @profile = Profile.find_by(user_id: params[:id])
        if @profile 
            render json: @profile 
        else 
            render json: :not_found 
        end 
    end 

    def update 
        profile = Profile.find_by(user_id: params[:id])
        if profile.update(profile_params)
            render json: profile 
        else 
            render json: profile.errors.full_messages
        end 
    end 

    private 

    def profile_params 
        params.require(:profile).permit(:img_url, :linkedin_url, :github_url, :resume_url, :cover_letter_url)
    end 
end 
