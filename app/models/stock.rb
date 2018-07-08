class Stock < ApplicationRecord
  belongs_to :user, optional: true
end
