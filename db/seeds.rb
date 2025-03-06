@user = User.create(email: "test@example.com", password: "password", password_confirmation: "password", first_name: "John", last_name: "Snow")

100.times do |i|
  Post.create(date: Date.today, rationale: "This is a rationale post #{i}", user: @user)
end
