Rails.application.routes.draw do
  resources :cocktails do
    resources :doses, only: [:new, :create, :destroy ]
  end
  root 'cocktails#index'
  delete "doses/:id", to: "doses#destroy"
end
