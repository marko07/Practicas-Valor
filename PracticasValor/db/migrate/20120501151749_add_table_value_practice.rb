class AddTableValuePractice < ActiveRecord::Migration
  def self.up
    create_table :value_practices do |t|
      t.string :name
      t.integer :user_id
      t.integer :recognition_id
      t.integer :internal_benchmarking_id
      t.boolean :active
      t.timestamps
    end
  end

  def self.down
    drop_table :value_practices
  end
end
