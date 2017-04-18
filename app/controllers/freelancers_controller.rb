class FreelancersController < ApplicationController
	def index
		@freelancers = Freelancer.all
	end

	def new
		@freelancer = Freelancer.new
		2.times { @freelancer.projects.build }
	end

	def create
		@freelancer = Freelancer.new(freelancer_params)

		if @freelancer.save
			redirect_to root_path
		else
			render :new
		end
	end

	private
	def freelancer_params
		params.require(:freelancer).permit(:first_name, :last_name, :specialty,
		projects_attributes: [:title, :technologies, :year_of_completion])
	end
end