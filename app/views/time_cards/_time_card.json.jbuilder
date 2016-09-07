json.extract! time_card, :id, :check_in, :check_out, :limit, :created_at, :updated_at
json.url time_card_url(time_card, format: :json)