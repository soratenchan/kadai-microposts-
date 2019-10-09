class Micropost < ApplicationRecord
  belongs_to :user
  
  validates :content, presence: true, length: { maximum: 255 }
  
  has_many :favorates
  has_many :favoraters, through: :favorates, source: :user
end
