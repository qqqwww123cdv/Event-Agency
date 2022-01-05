class Service < ApplicationRecord
  has_one_attached :picture
  belongs_to :user
  has_many :categories, dependent: :destroy
end
