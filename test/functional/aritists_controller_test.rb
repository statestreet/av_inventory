require 'test_helper'

class AritistsControllerTest < ActionController::TestCase
  setup do
    @aritist = aritists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:aritists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create aritist" do
    assert_difference('Aritist.count') do
      post :create, aritist: { 3w: @aritist.3w, birth: @aritist.birth, country: @aritist.country, name: @aritist.name, region: @aritist.region }
    end

    assert_redirected_to aritist_path(assigns(:aritist))
  end

  test "should show aritist" do
    get :show, id: @aritist
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @aritist
    assert_response :success
  end

  test "should update aritist" do
    put :update, id: @aritist, aritist: { 3w: @aritist.3w, birth: @aritist.birth, country: @aritist.country, name: @aritist.name, region: @aritist.region }
    assert_redirected_to aritist_path(assigns(:aritist))
  end

  test "should destroy aritist" do
    assert_difference('Aritist.count', -1) do
      delete :destroy, id: @aritist
    end

    assert_redirected_to aritists_path
  end
end
