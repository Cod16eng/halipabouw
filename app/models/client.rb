class Client < ApplicationRecord
	has_many :projects
	validates :name, presence: true

	def self.search(search)
	    clients = all
	  if search
	    where('cast(name as text) ILIKE ?',"%#{search}%")
	  else
	    all
	  end
	 end
end
