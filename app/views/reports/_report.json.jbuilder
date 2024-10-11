json.extract! report, :id, :product_id, :report_comment, :created_at, :updated_at
json.url report_url(report, format: :json)
