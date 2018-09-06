Rails.application.routes.draw do
  devise_for :users

  resources :book, except: :destroy do
    get :show_subjects, on: :collection
    get :delete, on: :collection
  end

  devise_scope :user do
    root to: "devise/sessions#new"
  end
end
