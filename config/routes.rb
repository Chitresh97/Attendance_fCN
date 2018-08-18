Rails.application.routes.draw do
  get 'home/student', as: :student_root

  get 'home/teacher',as: :teacher_root

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  devise_for :teachers
  


  devise_for :students

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
