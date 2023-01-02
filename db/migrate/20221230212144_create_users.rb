class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      # null: false - gives an ability to not add to db if param is null
      t.string :email, null: false
      t.string :password_digest

      t.timestamps
    end
  end
end
