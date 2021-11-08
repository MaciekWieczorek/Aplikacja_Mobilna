require "test_helper"

class LoTemplatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lo_template = lo_templates(:one)
  end

  test "should get index" do
    get lo_templates_url
    assert_response :success
  end

  test "should get new" do
    get new_lo_template_url
    assert_response :success
  end

  test "should create lo_template" do
    assert_difference('LoTemplate.count') do
      post lo_templates_url, params: { lo_template: { name_of_template: @lo_template.name_of_template, number_of_templates: @lo_template.number_of_templates } }
    end

    assert_redirected_to lo_template_url(LoTemplate.last)
  end

  test "should show lo_template" do
    get lo_template_url(@lo_template)
    assert_response :success
  end

  test "should get edit" do
    get edit_lo_template_url(@lo_template)
    assert_response :success
  end

  test "should update lo_template" do
    patch lo_template_url(@lo_template), params: { lo_template: { name_of_template: @lo_template.name_of_template, number_of_templates: @lo_template.number_of_templates } }
    assert_redirected_to lo_template_url(@lo_template)
  end

  test "should destroy lo_template" do
    assert_difference('LoTemplate.count', -1) do
      delete lo_template_url(@lo_template)
    end

    assert_redirected_to lo_templates_url
  end
end
