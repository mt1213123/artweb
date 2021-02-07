class Exhibition < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :district
  belongs_to :category

  belongs_to :user
  has_many :comments
  has_one_attached :image

  def self.search(search)
    if search != ""
      Exhibition.where('title LIKE(?)', "%#{search}%")      
    else
      Exhibition.all
    end
  end

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

  with_options numericality: { other_than: 1 } do
    validates :district_id
    validates :category_id
  end
end
