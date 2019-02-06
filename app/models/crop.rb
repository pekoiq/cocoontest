class Crop < ApplicationRecord
    has_many :plantings, dependent: :destroy
    accepts_nested_attributes_for :plantings, :reject_if => :all_blank, :allow_destroy => true
  end
