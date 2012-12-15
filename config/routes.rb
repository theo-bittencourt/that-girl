ThatGirl::Application.routes.draw do
  root :to => "pages#about_us"

  devise_for :admin_users, ActiveAdmin::Devise.config

  ActiveAdmin.routes(self)
  
  resources :newsletter_users
  
  match '/newsletter' => 'pages#newsletter', as: :newsletter
  match '/about_us'   => 'pages#about_us', as: :about_us
  match '/shop'       => 'products#index', as: :shop
  
end
