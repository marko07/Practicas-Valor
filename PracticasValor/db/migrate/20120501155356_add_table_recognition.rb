class AddTableRecognition < ActiveRecord::Migration
  def self.up
    create_table :recognitions do |t|
      t.integer :value_practice_id
      t.string :problem
      t.string :solution
      t.string :description
      t.string :analysis
      t.string :experience
    end
  end

  def self.down
    drop_table :recognitions
  end
end
