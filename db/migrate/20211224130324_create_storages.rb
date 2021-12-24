class CreateStorages < ActiveRecord::Migration[7.0]
  def change
    create_table :storages do |t|
      t.string :name
      t.string :manager
      t.string :address
      t.string :description

      t.timestamps
    end
  end
end
