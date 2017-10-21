Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'static_pages#index'
  resources :projects do
    collection do
      get :json_parser
    end
  end
end
