class AddColumnToStudent < ActiveRecord::Migration[6.0]
  def change
    add_column :students, :name, :string
  end
end
