class AddColumnsToStudent < ActiveRecord::Migration[6.0]
  def change
    add_column :students, :address, :string
    add_column :students, :mobile, :integer
  end
end
