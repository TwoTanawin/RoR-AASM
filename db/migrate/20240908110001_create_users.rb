class CreateUsers < ActiveRecord::Migration[7.2]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :status

      t.timestamps
    end
    add_index :users, :status
  end
end
