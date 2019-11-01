class CreateAssignments < ActiveRecord::Migration[6.0]
  def change
    create_table :assignments do |t|
      t.string :name
      t.string :street
      t.string :city
      t.string :state
      
      t.integer :zip, :limit => 5
      t.string :phone, :length => 12

      t.timestamps
    end
  end
end
