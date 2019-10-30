class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.datetime :due_date
      t.string   :description
      t.integer  :user_id
      t.integer  :assignment_id

      t.timestamps
    end
  end
end
