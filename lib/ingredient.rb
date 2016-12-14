class Ingredient < ActiveRecord::Base
  has_many :recipies
  has_many :instructions, through: :recipies
end
