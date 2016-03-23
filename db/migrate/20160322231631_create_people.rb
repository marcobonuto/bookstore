class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name, null: false, limit: 100
      t.string :email, null: false, limit: 100
      t.string :password, null: false
      t.date :born_at
      t.boolean :admin

      t.timestamps null: false 
    end
  end
end
