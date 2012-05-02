class AddTableInternalBenchmarking < ActiveRecord::Migration
  def self.up
    create_table :internal_benchmarkings do |t|
      t.integer :value_practice_id
      t.string :name
      t.string :reference
      t.string :relevant_elements
      t.string :description
      t.string :domain_level
    end    
  end

  def self.down
    drop_table :internal_benchmarkings
  end
end
