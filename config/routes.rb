Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root to: "static_pages#root" 
  # resource :session, only: [:create, :destroy]

  post '/signup', to: 'users#create' 
  resources :users, only: [:show, :update] do 
    member do 
      get '/profile', to: 'profiles#show'
      patch '/profile', to: 'profiles#update'
    end 
    
    resources :courses, only: [:index]  # is this needed? 
  end 
    
  resources :courses, only: [:index, :show] do 
    resources :lessons, only: [:index, :show]
    resources :tags, only: [:index] 
  end 

  resources :tags, only: [:index, :show] do 
    resources :tag_courses, only: :index 
  end 

  resources :user_courses, only: [:create, :show] 
  
  resources :user_lessons, only: [:create, :show] do 
    member do
      patch '/complete', to: 'user_lessons#complete' 
    end 
  end   
end
