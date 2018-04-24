FactoryBot.define do
  factory :post do
    title {FFaker::Book.title}
    article {FFaker::Book.description}

  end
end
