class AddKlassToResults < ActiveRecord::Migration[5.2]
  def change
    add_column :results, :klass, :string
  end
end
