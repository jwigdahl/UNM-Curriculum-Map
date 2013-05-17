json.array!(@degree_plans) do |degree_plan|
  json.extract! degree_plan, :undergrad_program_id, :academic_year
  json.url degree_plan_url(degree_plan, format: :json)
end