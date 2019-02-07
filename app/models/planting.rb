class Planting < ApplicationRecord
  has_many :croptasks, through: :crop
  has_many :tasktodos, through: :croptask

  belongs_to :crop, optional: true
  has_many :varieties, dependent: :destroy
  accepts_nested_attributes_for :varieties, :reject_if => :all_blank, :allow_destroy => true

end
