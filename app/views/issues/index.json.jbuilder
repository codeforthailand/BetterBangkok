json.array!(@issues) do |issue|
  json.extract! issue, :id, :description, :location, :posted_date
  json.url issue_url(issue, format: :json)
end
