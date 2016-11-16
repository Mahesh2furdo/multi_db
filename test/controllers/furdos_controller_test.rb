require 'test_helper'

class FurdosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @furdo = furdos(:one)
  end

  test "should get index" do
    get furdos_url
    assert_response :success
  end

  test "should get new" do
    get new_furdo_url
    assert_response :success
  end

  test "should create furdo" do
    assert_difference('Furdo.count') do
      post furdos_url, params: { furdo: { client_name: @furdo.client_name, location: @furdo.location } }
    end

    assert_redirected_to furdo_url(Furdo.last)
  end

  test "should show furdo" do
    get furdo_url(@furdo)
    assert_response :success
  end

  test "should get edit" do
    get edit_furdo_url(@furdo)
    assert_response :success
  end

  test "should update furdo" do
    patch furdo_url(@furdo), params: { furdo: { client_name: @furdo.client_name, location: @furdo.location } }
    assert_redirected_to furdo_url(@furdo)
  end

  test "should destroy furdo" do
    assert_difference('Furdo.count', -1) do
      delete furdo_url(@furdo)
    end

    assert_redirected_to furdos_url
  end
end
