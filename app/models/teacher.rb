class Teacher < ApplicationRecord
    has_many :subjects
    has_many :students, through: :subjects

    # has_one :subjects
    # has_one :students, through: :subjects
end
