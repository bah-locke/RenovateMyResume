require 'test_helper'

class ResumesControllerTest < ActionController::TestCase

  setup do
    @resume = resumes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:resumes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create resume" do
    assert_difference('Resume.count') do
      post :create, resume: { education: @resume.education, experience: @resume.experience, objective: @resume.objective, skills: @resume.skills, style_id: @resume.style_id, user_id: @resume.user_id }
    end

    assert_redirected_to admin_path
  end

  test "should show resume" do
    get :show, id: @resume  
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @resume
    assert_response :success
  end

  test "should update resume" do
    patch :update, id: @resume, resume: { education: @resume.education, experience: @resume.experience, objective: @resume.objective, skills: @resume.skills, style_id: @resume.style_id, user_id: @resume.user_id }
    assert_redirected_to resume_path(assigns(:resume))
  end

  test "should destroy resume" do
    assert_difference('Resume.count', -1) do
      delete :destroy, id: @resume
    end

    assert_redirected_to admin_path
  end
end