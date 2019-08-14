class Image < ApplicationRecord
  has_one_attached :pic
  has_many :comments, dependent: :destroy
  belongs_to :user
end
