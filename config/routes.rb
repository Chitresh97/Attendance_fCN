Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
  devise_for :students
  devise_for :teachers
  get 'students/home' ,to: 'students#home', as: :students_root
  get 'teachers/home',to: 'teachers#home', as: :teachers_root



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
