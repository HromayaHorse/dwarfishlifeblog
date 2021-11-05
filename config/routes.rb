Rails.application.routes.draw do
  get 'home/news'
  get 'home/screenshots'
  get 'home/links'
  # get 'home/index'
  root 'home#index'
  get "*path" => redirect("/")
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
