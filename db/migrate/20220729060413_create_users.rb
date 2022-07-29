class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email

      t.timestamps
    end

    remove_column :todos, :email
    add_reference :todos, :user, index: true
    add_foreign_key :todos, :users
  end
end
