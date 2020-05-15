class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string     :name         , null: false
      t.text       :explanation  , null: false
      t.string     :category     , null: false
      t.string     :brand        , null: false
      t.string     :condition    , null: false
      t.string     :region       , null: false
      t.string     :size
      t.integer    :price        , null: false
      t.integer    :shipping_days, null: false
      t.string     :postage      , null: false
      t.references :user         , null: false, foreign_key: true
      t.timestamps
    end
  end
end
