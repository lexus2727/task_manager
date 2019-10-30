class CreateAssignments < ActiveRecord::Migration[6.0]
  def change
    create_table :assignments do |t|
      t.string :name
      t.string :street
      t.string :state
      t.string :city
      
      t.integer :zip, :limit => 5
      t.integer :phone, :limit => 8

      t.timestamps
    end
  end
end
