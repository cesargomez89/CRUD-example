CRUDExample::Application.routes.draw do
  # get "welcome/index"

   root to:  'welcome#index'
   resources :articles
   

end
