class CreateDesignersStoresJoinTable < ActiveRecord::Migration
  def change
    create_join_table :designers, :stores do |t|
      t.index [:designer_id, :store_id]
      t.index [:store_id, :designer_id]
    end
  end
end
