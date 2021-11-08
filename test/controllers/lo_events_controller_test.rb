require "test_helper"

class LoEventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lo_event = lo_events(:one)
  end

  test "should get index" do
    get lo_events_url
    assert_response :success
  end

  test "should get new" do
    get new_lo_event_url
    assert_response :success
  end

  test "should create lo_event" do
    assert_difference('LoEvent.count') do
      post lo_events_url, params: { lo_event: { Event: @lo_event.Event, Ongoing_events: @lo_event.Ongoing_events, on_off: @lo_event.on_off } }
    end

    assert_redirected_to lo_event_url(LoEvent.last)
  end

  test "should show lo_event" do
    get lo_event_url(@lo_event)
    assert_response :success
  end

  test "should get edit" do
    get edit_lo_event_url(@lo_event)
    assert_response :success
  end

  test "should update lo_event" do
    patch lo_event_url(@lo_event), params: { lo_event: { Event: @lo_event.Event, Ongoing_events: @lo_event.Ongoing_events, on_off: @lo_event.on_off } }
    assert_redirected_to lo_event_url(@lo_event)
  end

  test "should destroy lo_event" do
    assert_difference('LoEvent.count', -1) do
      delete lo_event_url(@lo_event)
    end

    assert_redirected_to lo_events_url
  end
end
