Rails.application.routes.draw do
  root 'subs#index'
  resources :subs do
    resources :topics
  end

  scope 'topics/:topic_id', as: 'topic' do
    resources :comments, only: [:new, :create]
  end

  # get '/tacos/:taco_id' (This is your URI pattern), to: 'food_trucks#tacos' (This is the action), as: 'tacos' (This is a prefix)
end
