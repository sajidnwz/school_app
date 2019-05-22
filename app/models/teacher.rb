class Teacher < ApplicationRecord

has_many :sallery_histories, foreign_key: :te_id

end
