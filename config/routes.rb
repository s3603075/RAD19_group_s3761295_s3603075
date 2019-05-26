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

  get '*unmatched_route', to: 'application#not_found'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
