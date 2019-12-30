Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "static_pages#root" 
  resources :users, only: [:create, :show, :update] do 
    resources :courses, only: [:index]
    resources :user_courses, only: [:create, :index, :update]
    resources :user_lessons, only: [:create, :index, :update]
  end 
    
  resources :profiles, only: [:create, :show, :update]
  resources :courses, only: [:create, :index, :show, :destroy, :update] do 
    resources :lessons, only: :index 
  end 

  resources :lessons, only: [:create, :index, :show, :destroy, :update] 

  resources :tags, only: [:create, :index, :show, :destroy, :update] do
    resources :tag_courses, only: :index 
  end 

  resources :tag_courses, only: [:create, :destroy] 

end
