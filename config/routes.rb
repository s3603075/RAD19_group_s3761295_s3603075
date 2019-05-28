Rails.application.routes.draw do
  
  resources :courses do
    member do
      put "like", to: "courses#upvote"
      put "dislike", to: "courses#downvote"
    end
  end
  resources :locations
  resources :categories

  get 'sessions/new'


  get 'all/courses'

  get 'all/coordinators'

  root 'main#home'

  get 'main/home'
  
  get  'signup',  to: 'users#new'
  
  post 'signup',  to: 'users#create'
  
  resources :users
  
  get    '/login',   to: 'sessions#new'
  
  post   '/login',   to: 'sessions#create'
  
  delete '/logout',  to: 'sessions#destroy'
  
  post '/contact-us', to: 'contact#create'
  
  resources :contact

  get '/admin/course_edit', to: 'admin#course'
  
  get '/admin/coordinator_edit', to: 'admin#coordinator'

  get '/admin/category_edit', to: 'admin#category'

  get '/admin/location_edit', to: 'admin#location'
  
  get '/admin/resetvotes', to: 'admin#resetvotes'
  
  get '/likes/like', to: 'like#like'
  
  get '/likes/dislike', to: 'like#dislike'

  namespace :api do
    namespace :v1 do
      resources :users, only: :show
      resources :courses, only: :show
      namespace :list do
        resources :users, only: :index
        resources :courses, only: :index
      end
   end
  end

  get '*unmatched_route', to: 'application#not_found'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
