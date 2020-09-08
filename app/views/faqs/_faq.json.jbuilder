json.extract! faq, :id, :question, :response, :isActive, :order, :created_at, :updated_at
json.url faq_url(faq, format: :json)
