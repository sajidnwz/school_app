class SalleryHistory < ApplicationRecord

belongs_to :teacher, foreign_key: :te_id

end
