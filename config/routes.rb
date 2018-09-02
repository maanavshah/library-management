Rails.application.routes.draw do
  resources :book, except: :destroy do
    get :show_subjects, on: :collection
    get :delete, on: :collection
  end
end
