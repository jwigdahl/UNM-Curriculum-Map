json.array!(@undergrad_programs) do |undergrad_program|
  json.extract! undergrad_program, :dept_id, :name, :degree, :org_code
  json.url undergrad_program_url(undergrad_program, format: :json)
end