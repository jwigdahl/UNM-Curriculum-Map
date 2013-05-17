json.array!(@depts) do |dept|
  json.extract! dept, :college_id, :name, :acronym, :org_code
  json.url dept_url(dept, format: :json)
end