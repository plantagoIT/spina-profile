class CreateSpinaSetups < ActiveRecord::Migration[5.0]
  def change
    create_table :spina_setups do |t|
      t.integer :singleton_guard, unique: true
      t.jsonb :json_attributes
      t.timestamps
    end
  end
end
