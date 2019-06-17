Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/pages/home" => "pages#home"

  get "/pages/home" => "pages#home", as: "root"

  #generate a post route
  post "/pages/data" => "pages#data"

  #generate route with a unique id
  post "pages/data/:id" => "pages#data"

  #post "pages/data/jo" => "pages#data"
end
