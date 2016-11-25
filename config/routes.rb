Rails.application.routes.draw do
  resources :cocktails do
    resources :doses, only: [:new, :create ]
  end
  root 'cocktails#index'
  delete "doses/:id", to: "doses#destroy", as: "dose_destroy"
end
