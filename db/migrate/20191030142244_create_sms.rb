class CreateSms < ActiveRecord::Migration[6.0]
  def change
    create_table :sms do |t|
      t.string :nom
      t.string :telephone
      t.text :message

      t.timestamps
    end
  end
end
