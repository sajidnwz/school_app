class Student < ApplicationRecord
	has_many :results
	belongs_to :klass, optional: true
end
