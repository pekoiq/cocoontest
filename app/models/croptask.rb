class Croptask < ApplicationRecord
  belongs_to :crop, optional: true
  belongs_to :planting, optional: true
has_many :tasktodos

end
