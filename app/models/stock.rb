class Stock < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :price, presence: true
  validates :duration, presence: true
  validates :interest, presence: true
end
