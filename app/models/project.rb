class Project < ApplicationRecord
	validates :title , :description, :percent ,presence:true
	before_validation :check_desc
	before_validation :check_title	
	before_validation :check_per


	def check_desc
		if description.blank?
			self.description=title.delete('_') unless title.nil?
		end
	end

	def check_title
		self.title=title.gsub!(/\ /,'_') unless title.empty?
	end


	def check_per
		if percent.nil?
			self.percent=title.to_i unless title.nil?
		end
	end

end
