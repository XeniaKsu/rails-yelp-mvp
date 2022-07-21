class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates_presence_of :name, :phone_number, :category, :address
  validates :category, :inclusion => %w[chinese italian japanese french belgian]
end
