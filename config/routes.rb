ThatGirl::Application.routes.draw do
  root :to => "pages#about_us"
  
  post 'about_us' => 'pages#about_us_post'
  
  match 'about_us' => 'pages#about_us', :as => :about_us
  
end
