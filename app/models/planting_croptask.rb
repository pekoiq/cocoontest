class PlantingCroptask < ApplicationRecord
  
belongs_to :croptask
belongs_to :planting
end
