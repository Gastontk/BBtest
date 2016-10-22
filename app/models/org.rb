class Org < ActiveRecord::Base
	has_many :memberships
	has_many :users, through: :memberships
	validates :name, :description, presence: true, length: {in:5..500}

end
