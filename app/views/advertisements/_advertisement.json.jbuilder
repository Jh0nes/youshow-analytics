json.extract! advertisement, :id, :start_datetime, :end_datetime, :image_url, :advertisement_id, :advertisement_name, :campaign_id, :campaign_name, :campaign_customers_name, :screen_id, :template_id, :grid_id, :position, :widget_size, :created_at, :updated_at
json.url advertisement_url(advertisement, format: :json)
