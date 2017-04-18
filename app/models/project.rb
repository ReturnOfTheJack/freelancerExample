class Project < ApplicationRecord
	validates :title, :technologies, presence: true
	belongs_to :freelancer, optional: true
end
