FactoryBot.define do
  factory :user do
    username {FFaker::Name.first_name}
    email {FFaker::Internet.email}

  end
end
