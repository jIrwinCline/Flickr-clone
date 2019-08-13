class Image < ApplicationRecord
  has_many :comments, dependent: :destroy
  belongs_to :profile
end
