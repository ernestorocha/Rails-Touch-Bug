class CreateTouchers < ActiveRecord::Migration
  def change
    create_table :touchers do |t|
      t.integer :touched_id
      t.string :desc

      t.timestamps
    end
  end
end
