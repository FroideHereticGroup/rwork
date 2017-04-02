class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.integer :tel
      t.string :name
      t.string :phonetic
      t.string :address
      t.integer :birthday

      t.timestamps
    end
  end
end
