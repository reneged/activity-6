json.extract! clientworkout, :id, :client_name, :trainer, :duration_mins, :date_of_workout, :paid_amount, :created_at, :updated_at
json.url clientworkout_url(clientworkout, format: :json)
