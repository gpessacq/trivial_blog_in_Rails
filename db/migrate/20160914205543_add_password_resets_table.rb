class AddPasswordResetsTable < ActiveRecord::Migration[5.0]
  def change
    create_table :password_resets do |t|
      t.string :email
      t.string :token
      t.index :email
      t.index :token
      t.timestamps
    end
  end
end
