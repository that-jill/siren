class CreateMessageInABottles < ActiveRecord::Migration[5.0]
  def change
    create_table :message_in_a_bottles do |t|
      t.text :text

      t.timestamps
    end
  end
end
