Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root to: "static_pages#root" 

  resources :users, only: [:create, :show, :update] do 
    resources :user_courses, only: [:create, :index, :update]
    resources :user_lessons, only: [:create, :index, :update]
  end 

  resource :session, only: [:create, :destroy]
    
  resources :profiles, only: [:show, :update]

  resources :courses, only: [:index, :show] do 
    resources :lessons, only: :index 
  end 

  resources :lessons, only: [:index, :show] 

  resources :tags, only: [:index, :show] do 
    resources :tag_courses, only: :index 
  end 

end
