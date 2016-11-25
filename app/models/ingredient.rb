class Ingredient < ApplicationRecord
  has_many :doses
  validates :name, uniqueness: true, presence: true
  #validates_associated :doses

end
