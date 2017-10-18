class Skill < ApplicationRecord
<<<<<<< HEAD
	validates_presence_of :title, :percent_utilized
=======
	include Placeholder 
	validates_presence_of :title, :percent_utilize

after_initialize :set_defaults

	def set_defaults
		self.badge ||= Placeholder.image_generator(height: '250', width: '250')
	end	
>>>>>>> 3068240b07b04563b383ef0b12b413b035b49e90
end
