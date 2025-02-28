100.times do |i|
  Post.create(date: Date.today, rationale: "This is a rationale post #{i}")
end
