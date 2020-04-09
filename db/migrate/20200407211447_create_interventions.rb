class CreateInterventions < ActiveRecord::Migration[5.2]
  def self.up
    create_table :interventions do |t|

      t.string :author, :null => false, :default => "None"
      t.integer :customer_id, :null => false
      t.integer :building_id 
      t.integer :battery_id, :default => "None"
      t.integer :column_id, :default => "None"
      t.integer :elevator_id, :default => "None"
      t.integer :employee_id
      t.datetime :start_date_interv
      t.datetime :end_date_interv
      t.string :result, :default => "Incomplete"
      t.string :report, :null => false, :default => ""
      t.string :status, :default => "Pending"
      t.timestamps
    end
  end
end
