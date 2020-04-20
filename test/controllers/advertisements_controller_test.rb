require 'test_helper'

class AdvertisementsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @advertisement = advertisements(:one)
  end

  test "should get index" do
    get advertisements_url
    assert_response :success
  end

  test "should get new" do
    get new_advertisement_url
    assert_response :success
  end

  test "should create advertisement" do
    assert_difference('Advertisement.count') do
      post advertisements_url, params: { advertisement: { advertisement_id: @advertisement.advertisement_id, advertisement_name: @advertisement.advertisement_name, campaign_customers_name: @advertisement.campaign_customers_name, campaign_id: @advertisement.campaign_id, campaign_name: @advertisement.campaign_name, end_datetime: @advertisement.end_datetime, grid_id: @advertisement.grid_id, image_url: @advertisement.image_url, position: @advertisement.position, screen_id: @advertisement.screen_id, start_datetime: @advertisement.start_datetime, template_id: @advertisement.template_id, tempo_exibicao: @advertisement.tempo_exibicao, widget_size: @advertisement.widget_size } }
    end

    assert_redirected_to advertisement_url(Advertisement.last)
  end

  test "should show advertisement" do
    get advertisement_url(@advertisement)
    assert_response :success
  end

  test "should get edit" do
    get edit_advertisement_url(@advertisement)
    assert_response :success
  end

  test "should update advertisement" do
    patch advertisement_url(@advertisement), params: { advertisement: { advertisement_id: @advertisement.advertisement_id, advertisement_name: @advertisement.advertisement_name, campaign_customers_name: @advertisement.campaign_customers_name, campaign_id: @advertisement.campaign_id, campaign_name: @advertisement.campaign_name, end_datetime: @advertisement.end_datetime, grid_id: @advertisement.grid_id, image_url: @advertisement.image_url, position: @advertisement.position, screen_id: @advertisement.screen_id, start_datetime: @advertisement.start_datetime, template_id: @advertisement.template_id, tempo_exibicao: @advertisement.tempo_exibicao, widget_size: @advertisement.widget_size } }
    assert_redirected_to advertisement_url(@advertisement)
  end

  test "should destroy advertisement" do
    assert_difference('Advertisement.count', -1) do
      delete advertisement_url(@advertisement)
    end

    assert_redirected_to advertisements_url
  end
end
