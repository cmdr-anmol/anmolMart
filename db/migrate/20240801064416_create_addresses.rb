class CreateAddresses < ActiveRecord::Migration[7.1]
  def change
    create_table :addresses do |t|
      t.string :addressable_type
      t.bigint :addressable_id
      t.string :fname
      t.string :lname
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.string :country
      t.string :zip_code
      t.boolean :is_default ,default: false
      #Ex:- :default =>''
      t.string :phone

      t.timestamps
    end
  end
end
