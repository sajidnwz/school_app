class Student < ApplicationRecord
	has_many :results
	belongs_to :klass, optional: true

	validates :name, :roll_no, presence: true
	validates :roll_no, uniqueness: true
end
