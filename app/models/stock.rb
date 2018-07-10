class Stock < ApplicationRecord
  belongs_to :user

  validates :name,
            presence: true
  validates :price,
            :duration,
            :interest,
            presence: true,
            numericality: {
              greater_than: 0
            }
end
