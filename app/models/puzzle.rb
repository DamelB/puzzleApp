class Puzzle < ApplicationRecord
	serialize :grid, Array
	
	has_many :comments, dependent: :destroy
	has_many :constraints, dependent: :destroy
	
	validates :title, presence: true
	validates :rules, presence: true, length: {minimum: 10}
end
