require "application_system_test_case"

class UsersIdsTest < ApplicationSystemTestCase
  setup do
    @users_id = users_ids(:one)
  end

  test "visiting the index" do
    visit users_ids_url
    assert_selector "h1", text: "Users Ids"
  end

  test "creating a Users" do
    visit users_ids_url
    click_on "New Users"

    fill_in "Index", with: @users_id.index
    fill_in "List of templates", with: @users_id.list_of_templates
    fill_in "Ongoing event", with: @users_id.ongoing_event
    click_on "Create Users"

    assert_text "Users was successfully created"
    click_on "Back"
  end

  test "updating a Users" do
    visit users_ids_url
    click_on "Edit", match: :first

    fill_in "Index", with: @users_id.index
    fill_in "List of templates", with: @users_id.list_of_templates
    fill_in "Ongoing event", with: @users_id.ongoing_event
    click_on "Update Users"

    assert_text "Users was successfully updated"
    click_on "Back"
  end

  test "destroying a Users" do
    visit users_ids_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Users was successfully destroyed"
  end
end
