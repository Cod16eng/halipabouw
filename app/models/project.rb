class Project < ApplicationRecord
	belongs_to :client
	has_many :materials
	has_many :labours
	validates :name, presence: true
end
