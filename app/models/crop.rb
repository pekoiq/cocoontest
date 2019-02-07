class Crop < ApplicationRecord
    has_many :plantings, dependent: :destroy
    has_many :varieties, through: :plantings
    has_many :croptasks, dependent: :destroy

    accepts_nested_attributes_for :plantings, :reject_if => :all_blank, :allow_destroy => true
    accepts_nested_attributes_for :croptasks, :reject_if => :all_blank, :allow_destroy => true
  end
