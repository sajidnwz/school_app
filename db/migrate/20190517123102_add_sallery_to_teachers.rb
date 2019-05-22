class AddSalleryToTeachers < ActiveRecord::Migration[5.2]
  def change
    add_column :teachers, :sallery, :integer
  end
end
