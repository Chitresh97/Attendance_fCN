Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'teachers/home',to: 'teachers#home', as: :teachers_root

  devise_for :teachers
  get 'students/home' ,to: 'students#home', as: :students_root


  devise_for :students, controllers: { registrations: 'registrations' }
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
