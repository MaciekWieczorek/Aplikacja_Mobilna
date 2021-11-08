require "application_system_test_case"

class LoTemplatesTest < ApplicationSystemTestCase
  setup do
    @lo_template = lo_templates(:one)
  end

  test "visiting the index" do
    visit lo_templates_url
    assert_selector "h1", text: "Lo Templates"
  end

  test "creating a Lo template" do
    visit lo_templates_url
    click_on "New Lo Template"

    fill_in "Name of template", with: @lo_template.name_of_template
    fill_in "Number of templates", with: @lo_template.number_of_templates
    click_on "Create Lo template"

    assert_text "Lo template was successfully created"
    click_on "Back"
  end

  test "updating a Lo template" do
    visit lo_templates_url
    click_on "Edit", match: :first

    fill_in "Name of template", with: @lo_template.name_of_template
    fill_in "Number of templates", with: @lo_template.number_of_templates
    click_on "Update Lo template"

    assert_text "Lo template was successfully updated"
    click_on "Back"
  end

  test "destroying a Lo template" do
    visit lo_templates_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Lo template was successfully destroyed"
  end
end
