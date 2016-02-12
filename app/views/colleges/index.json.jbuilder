json.array!(@colleges) do |college|
  json.extract! college, :id, :faculty, :students, :sex, :dob, :hour, :more
  json.url college_url(college, format: :json)
end
