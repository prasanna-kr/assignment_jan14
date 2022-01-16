Rails.application.routes.draw do
  resources :student_marks
  resources :students
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "home#index"
  resources :colleges
end
