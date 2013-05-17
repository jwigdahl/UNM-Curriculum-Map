json.array!(@degree_requirements) do |degree_requirement|
  json.extract! degree_requirement, :degree_plan_id, :name, :category, :min_grade, :crucial, :note
  json.url degree_requirement_url(degree_requirement, format: :json)
end