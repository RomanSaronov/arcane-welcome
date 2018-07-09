class Stock < ApplicationRecord
  belongs_to :user

  # validates :name, presence: true
  # validates :price, :duration, :interest, presence: true, numericality: { only_integer: true, greater_than: 0 }
end
