FactoryBot.define do
  factory :issue do
    sequence(:title) { |n| "Issue #{n}" }
    sequence(:description) { |n| "Issue #{n} description" }
    lat { 1.0 }
    lng { 1.5 }
  end
end