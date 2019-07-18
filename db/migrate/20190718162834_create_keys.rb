class CreateKeys < ActiveRecord::Migration[5.2]
  def change
    create_table :keys do |t|
      t.string :key, limit: 1
      t.string :value, limit: 10

      t.timestamps
    end
  end
end
