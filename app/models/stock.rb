class Stock < ApplicationRecord
  belongs_to :user, optional: true

  validates :name, presence: true
  validates :price, :duration, :interest, presence: true, numericality: { only_integer: true }
end
