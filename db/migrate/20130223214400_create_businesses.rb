class CreateBusinesses < ActiveRecord::Migration
  def change
    create_table :businesses do |t|
      t.string :name
      t.string :address
      t.string :url
      t.string :phone
      t.string :ein

      t.timestamps
    end
  end
end
