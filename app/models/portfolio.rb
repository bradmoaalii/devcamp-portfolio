class Portfolio < ApplicationRecord
	include Placeholder 
	validates_presence_of :title, :body, :main_image, :thumb_image

	def self.angular
		where(subtitle: 'Angular')
<<<<<<< HEAD
	end
	scope :ruby_on_rails_portfolio_items, -> { where(subtitle: 'Ruby on Rails') }

	after_initialize :set_defaults

	def set_defaults
		self.main_image ||= "http://placehold.it/600x400"
		self.thumb_image ||= "http://placehold.it/350x200"
	end
=======
end

scope :ruby_on_rails_portfolio_items, -> { where(subtitle: 'Ruby on Rails') }

after_initialize :set_defaults

	def set_defaults
		self.main_image ||= Placeholder.image_generator(height: '600', width: '400')
		self.thumb_image ||= Placeholder.image_generator(height: '350', width: '200')
	end	
>>>>>>> 3068240b07b04563b383ef0b12b413b035b49e90
end

