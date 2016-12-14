class Instruction < ActiveRecord::Base
  has_many :recipies
  has_many :ingredients, through: :recipies
end
