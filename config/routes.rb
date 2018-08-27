Rails.application.routes.draw do
  root "application#index"
  namespace :api do
    namespace :v1 do
      resources :users#, only: [:index, :update]
    end
  end

  namespace :api do
    namespace :v1 do
      resources :games#, only: [:index, :update]
    end
  end
  root :controller => 'static', :action => '/public/index.html'
end
