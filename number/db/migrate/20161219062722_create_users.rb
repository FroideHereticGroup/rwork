class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :tel
      t.string :name
      t.string :phonetic
      t.string :address
      t.integer :birthday

      t.timestamps null: false
    end
  end
end
