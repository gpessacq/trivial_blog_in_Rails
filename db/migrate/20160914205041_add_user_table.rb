class AddUserTable < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email, uniqueness: true
      t.string :password
      t.string :remember_token
      t.timestamps
    end
  end
end
