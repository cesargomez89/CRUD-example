CRUDExample::Application.routes.draw do
  devise_for :users
   root to:  'welcome#index'
   resources :articles

end
