Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #get all the books
  get "/books", to: "books#index", as: "books"

  #add new book
  post "/books", to: "books#create"

  #add a new book - get the form page to create a new entry
  get "/books/new", to: "books#new", as: "books_new"
end
