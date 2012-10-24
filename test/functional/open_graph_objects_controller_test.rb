require 'test_helper'

class OpenGraphObjectsControllerTest < ActionController::TestCase
  setup do
    @open_graph_object = open_graph_objects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:open_graph_objects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create open_graph_object" do
    assert_difference('OpenGraphObject.count') do
      post :create, open_graph_object: { description: @open_graph_object.description, image: @open_graph_object.image, object_type: @open_graph_object.object_type, title: @open_graph_object.title }
    end

    assert_redirected_to open_graph_object_path(assigns(:open_graph_object))
  end

  test "should show open_graph_object" do
    get :show, id: @open_graph_object
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @open_graph_object
    assert_response :success
  end

  test "should update open_graph_object" do
    put :update, id: @open_graph_object, open_graph_object: { description: @open_graph_object.description, image: @open_graph_object.image, object_type: @open_graph_object.object_type, title: @open_graph_object.title }
    assert_redirected_to open_graph_object_path(assigns(:open_graph_object))
  end

  test "should destroy open_graph_object" do
    assert_difference('OpenGraphObject.count', -1) do
      delete :destroy, id: @open_graph_object
    end

    assert_redirected_to open_graph_objects_path
  end
end
