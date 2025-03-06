FactoryBot.define do
  factory :post do
    date { Date.today }
    rationale { "Some rationale" }
    association :user
  end

  factory :second_post, class: "Post" do
    date { Date.yesterday }
    rationale { "Some other rationale" }
    association :user
  end
end
