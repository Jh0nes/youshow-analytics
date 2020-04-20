class Advertisement
  include Mongoid::Document
  field :start_datetime, type: Time
  field :end_datetime, type: Time
  field :tempo_exibicao, type: Time
  field :image_url, type: String
  field :advertisement_id, type: Integer
  field :advertisement_name, type: String
  field :campaign_id, type: Integer
  field :campaign_name, type: String
  field :campaign_customers_name, type: String
  field :screen_id, type: Integer
  field :template_id, type: Integer
  field :grid_id, type: Integer
  field :template_id, type: Integer
  field :position, type: Float
  field :widget_size, type: String
end
