class AddDetailsToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :fname, :string
    add_column :users, :lname, :string
    add_column :users, :phone_no, :string
  end
end
