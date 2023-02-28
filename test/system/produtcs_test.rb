require "application_system_test_case"

class ProdutcsTest < ApplicationSystemTestCase
  setup do
    @produtc = produtcs(:one)
  end

  test "visiting the index" do
    visit produtcs_url
    assert_selector "h1", text: "Produtcs"
  end

  test "should create produtc" do
    visit produtcs_url
    click_on "New produtc"

    fill_in "Name", with: @produtc.name
    click_on "Create Produtc"

    assert_text "Produtc was successfully created"
    click_on "Back"
  end

  test "should update Produtc" do
    visit produtc_url(@produtc)
    click_on "Edit this produtc", match: :first

    fill_in "Name", with: @produtc.name
    click_on "Update Produtc"

    assert_text "Produtc was successfully updated"
    click_on "Back"
  end

  test "should destroy Produtc" do
    visit produtc_url(@produtc)
    click_on "Destroy this produtc", match: :first

    assert_text "Produtc was successfully destroyed"
  end
end
