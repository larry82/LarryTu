Rails.application.routes.draw do
  root 'welcome#index'
  resources :welcome do 
    collection {get 'education'}
    collection {get 'achievement'}
    collection {get 'projects'}
  end
end
