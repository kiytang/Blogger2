  
class SorceryCore < ActiveRecord::Migration
  def self.up
    create_table :authors do |t|
      t.string :username,         :null => false  # if you use another field as a username, for example email, you can safely remove this field.
      t.string :email,            :default => nil # if you use this field as a username, you might want to make it :null => false.
      t.string :crypted_password, :default => nil
      t.string :salt,             :default => nil

      t.timestamps
    end
  end

  add_index :authors, :email, unique: true
  def self.down
    drop_table :authors
  end
end