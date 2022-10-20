class Place < ApplicationRecord
	has_many :nodes
	belongs_to :company
end
