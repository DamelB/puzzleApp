class Constraint < ApplicationRecord
	serialize :array, Array
	belongs_to :puzzle
end
