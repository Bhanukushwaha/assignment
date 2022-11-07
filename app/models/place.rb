class Place < ApplicationRecord
	has_many :nodes
	belongs_to :company
	validates :name, presence: true
end
