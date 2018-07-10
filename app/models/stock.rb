class Stock < ApplicationRecord
  belongs_to :user

  validates :name,
            presence: true
  validates :duration,
            presence: true,
            numericality: {
              greater_than_or_equal_to: 1
            }
  validates :price,
            :interest,
            presence: true,
            numericality: {
              greater_than: 0
            }
end
