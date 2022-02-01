class CreatePhones < ActiveRecord::Migration[6.1]
  def change
    create_table :phones do |t|
      t.string :number
      t.string :type
      t.boolean :main

      t.timestamps
    end
  end
end
