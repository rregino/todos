FactoryBot.define do
  factory :todo do
    sequence(:title) { |t| "Learn Rails and testing #{t}" }
    user
  end

  trait :completed do
    completed_at { 1.day.ago }
  end

  trait :incomplete do
    completed_at { nil }
  end

  trait :blank_title do
    title { "" }
  end

  trait :no_user do
    user { nil }
  end
end
