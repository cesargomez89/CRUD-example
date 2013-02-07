CRUDExample::Application.routes.draw do
  devise_for :users

  root to:  'welcome#index'
  resources :articles do
    member do
      get :showarticle
    end
  end

end
