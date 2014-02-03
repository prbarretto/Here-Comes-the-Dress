class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.text :name
      t.text :yelp_id

      t.timestamps
    end
  end
end
