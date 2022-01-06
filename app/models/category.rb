class Category < ApplicationRecord
  belongs_to :service
  belongs_to :user
  has_one_attached :picture

end
