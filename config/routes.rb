ThatGirl::Application.routes.draw do
  root :to => "pages#about_us"
  
  match 'about_us' => 'pages#about_us', :as => :about_us
  
end
