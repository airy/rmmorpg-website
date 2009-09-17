class CreateInstances < ActiveRecord::Migration
  def self.up
    create_table :instances do |t|
      t.string :code
      t.string :name
      t.references :owner, :polymorphic => true

      t.timestamps
    end
  end

  def self.down
    drop_table :instances
  end
end
