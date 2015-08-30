json.array!(@feedbacks) do |feedback|
  json.extract! feedback, :id, :subject, :description, :contact
  json.url feedback_url(feedback, format: :json)
end
