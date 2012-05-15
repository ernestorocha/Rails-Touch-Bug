class CreateToucheds < ActiveRecord::Migration
  def change
    create_table :toucheds do |t|
      t.boolean :set_this

      t.timestamps
    end
  end
end
