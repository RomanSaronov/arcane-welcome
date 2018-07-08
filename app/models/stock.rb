class Stock < ApplicationRecord
  belongs_to :user, dependent: :destroy
end
