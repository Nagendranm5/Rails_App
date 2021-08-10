class Project < ApplicationRecord

	belongs_to :user

	validates :title,:description,:percent,presence:{message: "CANNOT BE BLANK"}
	validates :title,uniqueness:true


	# validates :title,presence: {message:"shouldn't be empty"}
	# validates :title,length:{minimum: 10,too_short:'%{count} size not valid'}
	# validates :title,:description,:percent,presence: {message: 'field cannot be empty'}
	# validates :terms_of_service,acceptance: true	
	# validates :title, acceptance: {accept: ['TRUE', 'accepted','yes1'] }
	# validates :title, acceptance:{accept: 'hi',message: "Empty"}
	# validates :title,exclusion:{in: %w(www ac), message: "%{value} is reserved."}
	# validates :title,inclusion:{in: %w(wwww ac in)}
	# validates :title,format: { with: /\A[a-zA-Z]+\z/ , message:'Letters only allowed'}
	
	# validates :title,numericality:{greater_than:15,message: '%{count} must be valid'}
	# validates :title, absence:{message:'Hello man'}
	# validates :title,uniqueness: {case_sensitive: true,message:'Its not an unique'}
	# validates_each :title,:description do|record,attr,value| record.errors.add(attr,'no num') if value=~ /\A[[:upper:]]/ end
	# validates :title, inclusion: { in: %w(small medium large),message: "%{value} is not a valid size" }, allow_blank: true
	# validates :title, inclusion: { in: %w(small medium large),message: "%{value} is not a valid size" }, allow_nil: true
	# validates :title,uniqueness:{on: :update,message: '%{value} is already exist'}
	# validates :title,presence:true ,if: :check_Blank?
	# def check_Blank?
	# 	title == "one"
	# end

	# before_validation :check_desc
	# before_validation :check_title
	# before_validation :check_per

	# after_validation :check_desc
	# after_validation :check_title	
	# after_validation :check_per

	# before_destroy :validate_title

	# def check_desc
	# 	if description.blank?
	# 		self.description=title.delete('_') unless title.nil?
	# 	end
	# end

	# def check_title
	# 	self.title=title.gsub!(/\ /,'_') unless title.empty?
	# end


	# def check_per
	# 	if percent.nil?
	# 		self.percent=title.to_i unless title.nil?
	# 	end
	# end

	# def validate_title
	# 	title.nil?
	# end
		
end





































# validates :title, length: { maximum: 2 }
	
	# validates :title , :description, :percent ,presence:true
	# before_validation :check_desc
	# before_validation :check_title	
	# before_validation :check_per


	# def check_desc
	# 	if description.blank?
	# 		self.description=title.delete('_') unless title.nil?
	# 	end
	# end

	# def check_title
	# 	self.title=title.gsub!(/\ /,'_') unless title.empty?
	# end


	# def check_per
	# 	if percent.nil?
	# 		self.percent=title.to_i unless title.nil?
	# 	end
	# end
