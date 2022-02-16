Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :tests do
    resources :questions
  end

  # resources :semesters do #-семестр один курсов много
  #   resources :courses
  # end
end
