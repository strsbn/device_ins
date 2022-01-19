require "application_system_test_case"

class DeviceInsTest < ApplicationSystemTestCase
  setup do
    @device_in = device_ins(:one)
  end

  test "visiting the index" do
    visit device_ins_url
    assert_selector "h1", text: "Device Ins"
  end

  test "creating a Device in" do
    visit device_ins_url
    click_on "New Device In"

    fill_in "Content", with: @device_in.content
    fill_in "Title", with: @device_in.title
    click_on "Create Device in"

    assert_text "Device in was successfully created"
    click_on "Back"
  end

  test "updating a Device in" do
    visit device_ins_url
    click_on "Edit", match: :first

    fill_in "Content", with: @device_in.content
    fill_in "Title", with: @device_in.title
    click_on "Update Device in"

    assert_text "Device in was successfully updated"
    click_on "Back"
  end

  test "destroying a Device in" do
    visit device_ins_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Device in was successfully destroyed"
  end
end
