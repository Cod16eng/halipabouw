class Project < ApplicationRecord
	belongs_to :client
	has_many :materials
	has_many :labours
	validates :name, presence: true

	def self.search(search)
	    materials = all
	  if search
	    where('cast(name as text) ILIKE ? OR cast(budget as text) ILIKE ? ',"%#{search}%", "%#{search}%")
	  else
	    all
	  end
	 end

	 def self.to_csv(options = {})
	  CSV.generate(options) do |csv|
	    csv << column_names
	    all.each do |product|
	      csv << product.attributes.values_at(*column_names)
	    end
	  end
   end
end
