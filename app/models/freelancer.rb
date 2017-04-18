class Freelancer < ApplicationRecord
	validates :first_name, :last_name, :specialty, presence: true
	has_many :projects, inverse_of: :freelancer

	accepts_nested_attributes_for :projects, allow_destroy: true
end
