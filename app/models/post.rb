class Post < ApplicationRecord
  belongs_to :user

  with_options presence: true do
    validates :trip_date
    validates :place
    validates :title
    validates :content
  end
end
