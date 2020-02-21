class Dose < ApplicationRecord
attr_accessor :destroyed_by_ingredient

  belongs_to :cocktail
  belongs_to :ingredient
  validates :description, presence: true
  validates_uniqueness_of :cocktail_id, scope: :ingredient_id
end
