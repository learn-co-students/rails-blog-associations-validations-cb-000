RailsBlog::Application.routes.draw do
  resources :posts, :tags, :users
end
