Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :systems, only: %i[index show]
  # resources :reviews, only: %i[new create show edit update destroy] do
    # resources :comments, only: %i[new create edit update destroy]
  # end
  resources :games, only: %i[index show] do
    resources :reviews, only: %i[new create edit update]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

# systems: index of systems, no other crud actions (systems are basically static)
# games: index of games per system, also static (eventually API)
# reviews: index of reviews per game, crud actions (new, create, edit, update, destroy)
# comments: index of comments per game, crud actions (new, create, edit, update, destroy)
