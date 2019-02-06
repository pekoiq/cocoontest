class Variety < ApplicationRecord
  belongs_to :planting, optional: true
end
