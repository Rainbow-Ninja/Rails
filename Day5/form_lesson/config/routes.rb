Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  #list all movies
  get "/movies", to: "movies#index", as: "movies"

  #create new movie
  post "/movies", to: "movies#create"

  #add a new movie - get the form page to create a new entry
  get "/movies/new", to: "movies#new", as: "movies_new"
end
