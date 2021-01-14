FactoryBot.define do
  factory :user do
    nickname              {"test"}
    email                 {"test@example.com"}
    password              {"test123"}
    password_confirmation {password}
  end
end