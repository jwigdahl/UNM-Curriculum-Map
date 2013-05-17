json.array!(@term_plans) do |term_plan|
  json.extract! term_plan, :degree_plan_id, :term_number
  json.url term_plan_url(term_plan, format: :json)
end