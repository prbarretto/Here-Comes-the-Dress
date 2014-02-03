class CreateDesigners < ActiveRecord::Migration
  def change
    create_table :designers do |t|
      t.text :name

      t.timestamps
    end
  end
end
