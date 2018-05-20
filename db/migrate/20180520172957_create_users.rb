class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :facebook
      t.string :twitter
      t.integer :phone_country
      t.integer :phone_number
      t.string :whatsapp
      t.string :email
      t.string :tumblr
      t.string :soundcloud

      t.timestamps
    end
  end
end
