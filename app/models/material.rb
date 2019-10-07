class Material < ApplicationRecord
  belongs_to :project
  validates :nr_inv_mat, presence: true

  def self.search(search)
	    materials = all
	  if search
	    where('cast(name as text) ILIKE ? OR cast(amount as text) ILIKE ? OR cast(nr_inv_mat as text) ILIKE ?',"%#{search}%", "%#{search}%", "%#{search}%")
	  else
	    all
	  end
	 end
end
