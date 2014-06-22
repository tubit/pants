Rails.application.routes.draw do
  # Resources
  resources :posts

  # Tag archives
  get 'tag/:tag' => 'posts#index', as: :tagged_posts

  # Daily archives
  get ':year-:month-:day' => 'posts#day', as: :day

  # Plain routes
  match 'login' => 'auth#login', via: [:get, :post]
  root to: 'posts#index'
end
