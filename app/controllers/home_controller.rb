class HomeController < ApplicationController
  before_action :authenticate_student!, only: [:student]
  def student
    @student=Student.find_by(id: current_student.id)
    @today=ClassDate.where(class_time: Time.now.strftime("%a, %d %b %Y ") ).pluck(:class_time).last
    @periods=ClassDate.all.pluck(:class_time)
  end

  def teacher
  end
end
