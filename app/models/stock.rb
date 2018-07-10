class Stock < ApplicationRecord
  belongs_to :user

  validates :name,
            presence: true,
            message: "Name can't be blank"
  validates :price,
            :duration,
            :interest,
            presence: true,
            numericality: {
              only_integer: true,
              greater_than: 0
            }
end
