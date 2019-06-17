Rails.application.routes.draw do
  get 'juice/page'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  # verb "url" => "controller#action"
  # list all the games to the users
  get "/games/page/" => "games#page"
end
