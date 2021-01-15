class Exhibition < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many_attached :images

  with_options presence: true do
    validates :image
    validates :title
    validates :description
    validates :date
    validates :place
    validates :district_id
    validates :category_id
    validates :station
    validates :price
    validates :website
  end
end
