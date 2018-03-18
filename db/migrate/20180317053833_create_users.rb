class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string          :email
      t.string          :password_digest
      t.string          :first_name
      t.string          :last_name
      t.string          :skill
      t.string          :image
      t.text            :upstream,    array: true, default: []
      t.text            :downstream,  array: true, default: []

      t.integer         :x_pos
      t.integer         :y_pos

      t.string          :location
      t.string          :dob
      t.string          :phone

      t.timestamps
    end
  end
end
