Rails.application.routes.draw do

  get 'all/courses'

  get 'all/coordinators'

  get 'course/mohammed'

  root 'main#home'

  get 'location/loc14_10_31'

  get 'location/loc14_08_26'

  get 'location/loc14_10_30', to: 'location#loc14_10_30'

  get 'category/Web_Development'

  get 'category/Java'

  get 'category/iOS_Engineering'

  get 'category/Full_Stack_Dev'

  get 'main/home'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
