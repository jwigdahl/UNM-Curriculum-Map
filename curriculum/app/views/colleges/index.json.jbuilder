json.array!(@colleges) do |college|
  json.extract! college, :name, :acronym, :org_code
  json.url college_url(college, format: :json)
end