require 'test_helper'

class MessageInABottlesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @message_in_a_bottle = message_in_a_bottles(:one)
  end

  test "should get index" do
    get message_in_a_bottles_url
    assert_response :success
  end

  test "should get new" do
    get new_message_in_a_bottle_url
    assert_response :success
  end

  test "should create message_in_a_bottle" do
    assert_difference('MessageInABottle.count') do
      post message_in_a_bottles_url, params: { message_in_a_bottle: { text: @message_in_a_bottle.text } }
    end

    assert_redirected_to message_in_a_bottle_url(MessageInABottle.last)
  end

  test "should show message_in_a_bottle" do
    get message_in_a_bottle_url(@message_in_a_bottle)
    assert_response :success
  end

  test "should get edit" do
    get edit_message_in_a_bottle_url(@message_in_a_bottle)
    assert_response :success
  end

  test "should update message_in_a_bottle" do
    patch message_in_a_bottle_url(@message_in_a_bottle), params: { message_in_a_bottle: { text: @message_in_a_bottle.text } }
    assert_redirected_to message_in_a_bottle_url(@message_in_a_bottle)
  end

  test "should destroy message_in_a_bottle" do
    assert_difference('MessageInABottle.count', -1) do
      delete message_in_a_bottle_url(@message_in_a_bottle)
    end

    assert_redirected_to message_in_a_bottles_url
  end
end
