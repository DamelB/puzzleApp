class Comment < ApplicationRecord
  belongs_to :puzzle
	
	validates :nick, presence: true
	validates :body, presence: true
end
