require 'test_helper'

class ClientworkoutsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @clientworkout = clientworkouts(:one)
  end

  test "should get index" do
    get clientworkouts_url
    assert_response :success
  end

  test "should get new" do
    get new_clientworkout_url
    assert_response :success
  end

  test "should create clientworkout" do
    assert_difference('Clientworkout.count') do
      post clientworkouts_url, params: { clientworkout: { client_name: @clientworkout.client_name, date_of_workout: @clientworkout.date_of_workout, duration_mins: @clientworkout.duration_mins, paid_amount: @clientworkout.paid_amount, trainer: @clientworkout.trainer } }
    end

    assert_redirected_to clientworkout_url(Clientworkout.last)
  end

  test "should show clientworkout" do
    get clientworkout_url(@clientworkout)
    assert_response :success
  end

  test "should get edit" do
    get edit_clientworkout_url(@clientworkout)
    assert_response :success
  end

  test "should update clientworkout" do
    patch clientworkout_url(@clientworkout), params: { clientworkout: { client_name: @clientworkout.client_name, date_of_workout: @clientworkout.date_of_workout, duration_mins: @clientworkout.duration_mins, paid_amount: @clientworkout.paid_amount, trainer: @clientworkout.trainer } }
    assert_redirected_to clientworkout_url(@clientworkout)
  end

  test "should destroy clientworkout" do
    assert_difference('Clientworkout.count', -1) do
      delete clientworkout_url(@clientworkout)
    end

    assert_redirected_to clientworkouts_url
  end
end
