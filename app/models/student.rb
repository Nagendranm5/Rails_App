class Student < ApplicationRecord

    has_many :subjects 
    has_many :teachers ,through: :subjects
    
    # has_one :subjects 
    # has_one :teachers ,through: :subjects
end
