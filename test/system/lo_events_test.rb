require "application_system_test_case"

class LoEventsTest < ApplicationSystemTestCase
  setup do
    @lo_event = lo_events(:one)
  end

  test "visiting the index" do
    visit lo_events_url
    assert_selector "h1", text: "Lo Events"
  end

  test "creating a Lo event" do
    visit lo_events_url
    click_on "New Lo Event"

    fill_in "Event", with: @lo_event.Event
    fill_in "Ongoing events", with: @lo_event.Ongoing_events
    check "On off" if @lo_event.on_off
    click_on "Create Lo event"

    assert_text "Lo event was successfully created"
    click_on "Back"
  end

  test "updating a Lo event" do
    visit lo_events_url
    click_on "Edit", match: :first

    fill_in "Event", with: @lo_event.Event
    fill_in "Ongoing events", with: @lo_event.Ongoing_events
    check "On off" if @lo_event.on_off
    click_on "Update Lo event"

    assert_text "Lo event was successfully updated"
    click_on "Back"
  end

  test "destroying a Lo event" do
    visit lo_events_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Lo event was successfully destroyed"
  end
end
