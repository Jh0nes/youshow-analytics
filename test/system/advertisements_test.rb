require "application_system_test_case"

class AdvertisementsTest < ApplicationSystemTestCase
  setup do
    @advertisement = advertisements(:one)
  end

  test "visiting the index" do
    visit advertisements_url
    assert_selector "h1", text: "Advertisements"
  end

  test "creating a Advertisement" do
    visit advertisements_url
    click_on "New Advertisement"

    fill_in "Advertisement", with: @advertisement.advertisement_id
    fill_in "Advertisement name", with: @advertisement.advertisement_name
    fill_in "Campaign customers name", with: @advertisement.campaign_customers_name
    fill_in "Campaign", with: @advertisement.campaign_id
    fill_in "Campaign name", with: @advertisement.campaign_name
    fill_in "End datetime", with: @advertisement.end_datetime
    fill_in "Grid", with: @advertisement.grid_id
    fill_in "Image url", with: @advertisement.image_url
    fill_in "Position", with: @advertisement.position
    fill_in "Screen", with: @advertisement.screen_id
    fill_in "Start datetime", with: @advertisement.start_datetime
    fill_in "Template", with: @advertisement.template_id
    fill_in "Tempo exibicao", with: @advertisement.tempo_exibicao
    fill_in "Widget size", with: @advertisement.widget_size
    click_on "Create Advertisement"

    assert_text "Advertisement was successfully created"
    click_on "Back"
  end

  test "updating a Advertisement" do
    visit advertisements_url
    click_on "Edit", match: :first

    fill_in "Advertisement", with: @advertisement.advertisement_id
    fill_in "Advertisement name", with: @advertisement.advertisement_name
    fill_in "Campaign customers name", with: @advertisement.campaign_customers_name
    fill_in "Campaign", with: @advertisement.campaign_id
    fill_in "Campaign name", with: @advertisement.campaign_name
    fill_in "End datetime", with: @advertisement.end_datetime
    fill_in "Grid", with: @advertisement.grid_id
    fill_in "Image url", with: @advertisement.image_url
    fill_in "Position", with: @advertisement.position
    fill_in "Screen", with: @advertisement.screen_id
    fill_in "Start datetime", with: @advertisement.start_datetime
    fill_in "Template", with: @advertisement.template_id
    fill_in "Tempo exibicao", with: @advertisement.tempo_exibicao
    fill_in "Widget size", with: @advertisement.widget_size
    click_on "Update Advertisement"

    assert_text "Advertisement was successfully updated"
    click_on "Back"
  end

  test "destroying a Advertisement" do
    visit advertisements_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Advertisement was successfully destroyed"
  end
end
