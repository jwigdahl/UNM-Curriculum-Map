json.array!(@prerequisites) do |prerequisite|
  json.extract! prerequisite, :course_id, :prereq_id, :corequisite, :strict_corequisite, :description, :position, :or_connector
  json.url prerequisite_url(prerequisite, format: :json)
end