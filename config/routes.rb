ThatGirl::Application.routes.draw do
  resources :newsletter_users

  root :to => "pages#about_us"
  
  match '/newsletter' => 'pages#newsletter', :as => :newsletter
  match '/about_us'   => 'pages#about_us', :as => :about_us
  
end
