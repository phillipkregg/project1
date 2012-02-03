require 'test_helper'

class SketchesControllerTest < ActionController::TestCase
  setup do
    @sketch = sketches(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sketches)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sketch" do
    assert_difference('Sketch.count') do
      post :create, :sketch => @sketch.attributes
    end

    assert_redirected_to sketch_path(assigns(:sketch))
  end

  test "should show sketch" do
    get :show, :id => @sketch.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @sketch.to_param
    assert_response :success
  end

  test "should update sketch" do
    put :update, :id => @sketch.to_param, :sketch => @sketch.attributes
    assert_redirected_to sketch_path(assigns(:sketch))
  end

  test "should destroy sketch" do
    assert_difference('Sketch.count', -1) do
      delete :destroy, :id => @sketch.to_param
    end

    assert_redirected_to sketches_path
  end
end
