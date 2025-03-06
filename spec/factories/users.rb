FactoryBot.define do
  factory :user do
    first_name { "John" }
    last_name { "Snow" }
    email { Faker::Internet.unique.email }
    password { "password" }
    password_confirmation { "password" }
  end

  factory :admin, class: "AdminUser" do
    first_name { "Admin" }
    last_name { "User" }
    email { Faker::Internet.unique.email }
    password { "password" }
    password_confirmation { "password" }
    type { "admin" }
  end
end
