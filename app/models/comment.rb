class Comment < ApplicationRecord
  belongs_to :image
  belongs_to :profile
end
