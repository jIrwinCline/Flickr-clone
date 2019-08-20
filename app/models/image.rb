class Image < ApplicationRecord
  has_one_attached :pic
  validates :pic, attached: true
  has_many :comments, dependent: :destroy
  belongs_to :user
end
