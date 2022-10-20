class Company < ApplicationRecord
	belongs_to :country
	belongs_to :state
	belongs_to :city
	has_many :user
	has_many :places
end
