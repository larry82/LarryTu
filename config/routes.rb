Rails.application.routes.draw do
  resources :teeth do 
  	collection {get 'comparison'}
  	collection {get 'thanks'}
  	member do 
  		patch 'update_times'
  	end
  end
  root 'teeth#comparison'
  # resources :welcome do 
  #   collection {get 'education'}
  #   collection {get 'achievement'}
  #   collection {get 'projects'}
  # end
end
