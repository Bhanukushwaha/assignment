class Country < ApplicationRecord
	has_many :states
	has_many :company
	validates :name, presence: true
end
