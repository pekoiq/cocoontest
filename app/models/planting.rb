class Planting < ApplicationRecord
  belongs_to :crop, optional: true
  has_many :varieties, dependent: :destroy
  has_many :tasktodos, dependent: :destroy
  accepts_nested_attributes_for :varieties, :reject_if => :all_blank, :allow_destroy => true
  accepts_nested_attributes_for :tasktodos, :reject_if => :all_blank, :allow_destroy => true

end
