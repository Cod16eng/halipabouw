class Labour < ApplicationRecord
  belongs_to :project
  validates :name, presence: true
  validates :amount, presence: true
  #validates :nr_inv_lab, presence: true

  def self.search(search)
	    labours = all
	  if search
	    where('cast(name as text) ILIKE ? OR cast(amount as text) ILIKE ? OR cast(nr_inv_lab as text) ILIKE ?',"%#{search}%", "%#{search}%", "%#{search}%")
	  else
	    all
	  end
	 end
end
