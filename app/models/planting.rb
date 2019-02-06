class Planting < ApplicationRecord
  belongs_to :crop, optional: true
  has_many :varieties, dependent: :destroy
  accepts_nested_attributes_for :varieties, :reject_if => :all_blank, :allow_destroy => true

end
