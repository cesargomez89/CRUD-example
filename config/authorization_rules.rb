authorization do
  role :reg_user do
    has_permission_on [:articles], :to => [:index, :show, :new, :create, :edit, :update, :destroy]
  end
      
  role :guest do
    has_permission_on :articles, :to => [:index, :show]
    has_permission_on :comments, :to => [:new, :create]
    has_permission_on :comments, :to => [:edit, :update] do
      if_attribute :user => is { user }
    end
  end

    end
  end
end
