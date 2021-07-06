FactoryBot.define do
  factory :message do
    content {Faker::Lorem.sentence}
    association :user
    association :room

    after(:build) do |message|
      message.image.attach(io: File.open('public/images/camera-1085705_640.png'), filename: 'camera-1085705_640.png')
    end
  end
end
