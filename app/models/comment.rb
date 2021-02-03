class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :exhibition

  validates :text, presence:true
end
