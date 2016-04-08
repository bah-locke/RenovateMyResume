json.array!(@resumes) do |resume|
  json.extract! resume, :id, :objective, :skills, :experience, :education, :user_id, :style_id
  json.url resume_url(resume, format: :json)
end
