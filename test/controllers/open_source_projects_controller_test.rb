require 'test_helper'

class OpenSourceProjectsControllerTest < ActionController::TestCase
  setup do
    @open_source_project = open_source_projects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:open_source_projects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create open_source_project" do
    assert_difference('OpenSourceProject.count') do
      post :create, open_source_project: { open_source_id: @open_source_project.open_source_id, url: @open_source_project.url }
    end

    assert_redirected_to open_source_project_path(assigns(:open_source_project))
  end

  test "should show open_source_project" do
    get :show, id: @open_source_project
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @open_source_project
    assert_response :success
  end

  test "should update open_source_project" do
    patch :update, id: @open_source_project, open_source_project: { open_source_id: @open_source_project.open_source_id, url: @open_source_project.url }
    assert_redirected_to open_source_project_path(assigns(:open_source_project))
  end

  test "should destroy open_source_project" do
    assert_difference('OpenSourceProject.count', -1) do
      delete :destroy, id: @open_source_project
    end

    assert_redirected_to open_source_projects_path
  end
end
