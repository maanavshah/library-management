Rails.application.routes.draw do
  resources :book do
    get :show_subjects, on: :collection
  end
end
