Rails.application.routes.draw do

<<<<<<< HEAD
  match "main/likeCourse" , :via => [:get], as: "likeCourse_action"

=======
  get 'sessions/new'

>>>>>>> af19f64354e0c34d0ecea9e9f3afa085ae05337f
  get 'all/courses'

  get 'all/coordinators'

  root 'main#home'

  get 'location/loc14_10_31'

  get 'location/loc14_08_26'

  get 'location/loc14_10_30'

  get 'category/Web_Development'

  get 'category/Java'

  get 'category/iOS_Engineering'

  get 'category/Full_Stack_Dev'

  get 'main/home'
  
  get  'signup',  to: 'users#new'
  
  post 'signup',  to: 'users#create'
  
  resources :users
  
  get    '/login',   to: 'sessions#new'
  
  post   '/login',   to: 'sessions#create'
  
  delete '/logout',  to: 'sessions#destroy'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
