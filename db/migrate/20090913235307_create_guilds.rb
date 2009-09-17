class CreateGuilds < ActiveRecord::Migration
  def self.up
    create_table :guilds do |t|
      t.string :code
      t.string :name
      t.string :zone

      t.timestamps
    end
  end

  def self.down
    drop_table :guilds
  end
end
