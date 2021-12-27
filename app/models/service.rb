class Service < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true
  has_one_attached :picture
  belongs_to :user
  has_many :categories
end
