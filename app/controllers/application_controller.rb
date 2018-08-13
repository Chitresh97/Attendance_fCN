class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def after_sign_in_path_for(student)
    students_root_path
  end
  
  def after_sign_in_path_for(teacher)
    teachers_root_path
  end
end
