class Variety < ApplicationRecord
  belongs_to :planting, optional: true
  has_one :crop, through: :plantings
end
