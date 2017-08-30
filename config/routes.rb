Rails.application.routes.draw do
  root 'subs#index'
  resources :subs do
    resources :topics 
  end


  # get '/tacos/:taco_id' (This is your URI pattern), to: 'food_trucks#tacos' (This is the action), as: 'tacos' (This is a prefix)
end
