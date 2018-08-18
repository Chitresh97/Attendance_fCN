require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get student" do
    get home_student_url
    assert_response :success
  end

  test "should get teacher" do
    get home_teacher_url
    assert_response :success
  end

end
