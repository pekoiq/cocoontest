class Tasktodo < ApplicationRecord
belongs_to :croptask
has_many :plantings, through: :croptask

end
