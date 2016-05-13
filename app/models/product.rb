class Product < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :url, presence: true, uniqueness: true
  validates :user, presence: true
  belongs_to :category
  belongs_to :user
end
