Rails.application.routes.draw do

  get 'course/mohammed'

  root 'main#home'

  get 'location/loc14_10_31'

  get 'location/loc14_08_26'

  get 'location/loc14_10_30', to: 'location#loc14_10_30'

  get 'category/web_dev'

  get 'category/java'

  get 'category/ios', to: 'category#ios'

  get 'category/full_stack_dev'

  get 'main/home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
