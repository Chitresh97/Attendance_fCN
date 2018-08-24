class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  protected

  def devise_parameter_sanitizer
    if resource_class == Teacher
      Teacher::ParameterSanitizer.new(Teacher, :teacher, params)
    elsif resource_class == Student
      Student::ParameterSanitizer.new(Student, :student, params)
    else
      super # Use the default one
    end
  end
end
