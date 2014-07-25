require 'test_helper'

class ProjectInterestPointsControllerTest < ActionController::TestCase
  setup do
    @project_interest_point = project_interest_points(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:project_interest_points)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create project_interest_point" do
    assert_difference('ProjectInterestPoint.count') do
      post :create, project_interest_point: { content: @project_interest_point.content, project_id: @project_interest_point.project_id }
    end

    assert_redirected_to project_interest_point_path(assigns(:project_interest_point))
  end

  test "should show project_interest_point" do
    get :show, id: @project_interest_point
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @project_interest_point
    assert_response :success
  end

  test "should update project_interest_point" do
    patch :update, id: @project_interest_point, project_interest_point: { content: @project_interest_point.content, project_id: @project_interest_point.project_id }
    assert_redirected_to project_interest_point_path(assigns(:project_interest_point))
  end

  test "should destroy project_interest_point" do
    assert_difference('ProjectInterestPoint.count', -1) do
      delete :destroy, id: @project_interest_point
    end

    assert_redirected_to project_interest_points_path
  end
end
