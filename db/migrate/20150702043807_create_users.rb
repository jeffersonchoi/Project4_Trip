class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.string :email
      t.string :password_digest
      t.date :date_of_birth

      t.timestamps null: false
    end
  end
end
