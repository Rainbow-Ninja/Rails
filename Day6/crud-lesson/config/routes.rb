Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #list all movies
  get "/movies", to:"movies#index", as: "movies"

  #create a movie
  post "/movies", to:"movies#create"

  #add a movie through through the form
  get "/movies/new", to:"movies#new", as: "new_movie"

  #show a single movie
  get "/movies/:id", to: "movies#show", as: "movie"
 
  #edit a movie
  get "/movies/:id/edit", to: "movies#edit", as: "edit_movie"

  #update the movie
  put "/movies/:id", to: "movies#update"

  #delete a movie
  delete "/movies/:id", to: "movies#delete"

end
