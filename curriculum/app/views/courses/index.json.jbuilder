json.array!(@courses) do |course|
  json.extract! course, :name, :crn, :credits, :description, :short_description, :dept_id, :degree_requirement_id
  json.url course_url(course, format: :json)
end