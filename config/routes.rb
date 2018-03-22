Rails.application.routes.draw do

  root 'home#index'

  get 'home/index'
  # get 'home/index' => 'home#index' 화살표 전과 후의 text가 같다면 생략 가능

  get 'home/new'
  post 'home/create'

  get 'home/edit/:post_id' => 'home#edit', as: 'post_edit'  # as For View Helper
  post 'home/update/:post_id' => 'home#update'

  get 'home/destroy/:post_id' => 'home#destroy', as: 'post_destroy'

# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
