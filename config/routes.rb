CRUDExample::Application.routes.draw do

   root to:  'welcome#index'
   resources :articles do
     member do
       get :showarticle
     end
   end
   

end
