class CreateMesagges < ActiveRecord::Migration
  def change
    create_table :mesagges do |t|
      t.string :message

      t.timestamps null: false
    end
  end
end
