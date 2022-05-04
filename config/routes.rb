Rails.application.routes.draw do
  root "memories#index"
  resources:memories
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
