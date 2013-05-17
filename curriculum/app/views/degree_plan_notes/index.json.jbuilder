json.array!(@degree_plan_notes) do |degree_plan_note|
  json.extract! degree_plan_note, :degree_plan_id, :note
  json.url degree_plan_note_url(degree_plan_note, format: :json)
end