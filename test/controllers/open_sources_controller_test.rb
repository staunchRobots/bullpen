require 'test_helper'

class OpenSourcesControllerTest < ActionController::TestCase
  setup do
    @open_source = open_sources(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:open_sources)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create open_source" do
    assert_difference('OpenSource.count') do
      post :create, open_source: { cv_id: @open_source.cv_id }
    end

    assert_redirected_to open_source_path(assigns(:open_source))
  end

  test "should show open_source" do
    get :show, id: @open_source
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @open_source
    assert_response :success
  end

  test "should update open_source" do
    patch :update, id: @open_source, open_source: { cv_id: @open_source.cv_id }
    assert_redirected_to open_source_path(assigns(:open_source))
  end

  test "should destroy open_source" do
    assert_difference('OpenSource.count', -1) do
      delete :destroy, id: @open_source
    end

    assert_redirected_to open_sources_path
  end
end
