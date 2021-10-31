class CreateLodgments < ActiveRecord::Migration[5.2]
  def change
    create_table :lodgments do |t|
      t.integer :beds_nb
      t.integer :price
      t.text :description
      t.boolean :has_wifi
      t.text :welcome_message

      t.belongs_to :city, index: true
      t.references :owner, index: true
      t.timestamps
    end
  end
end
