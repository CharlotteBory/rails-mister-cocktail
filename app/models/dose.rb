class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient

  validates :description, presence: true, allow_blank: false, allow_nil: false
  validates :ingredient_id, presence: true, allow_blank: false
  validates :dose_id, presence: true, allow_blank: false
end
