FactoryBot.define do
  factory :post do
    trip_date {'2021/6/21 15〜'}
    place     {'東京'}
    title     {'旅に行こう'}
    content   {Faker::Lorem.sentence}
    association :user
  end
end