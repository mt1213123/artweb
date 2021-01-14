class CreateExhibitions < ActiveRecord::Migration[6.0]
  def change
    create_table :exhibitions do |t|
      t.string :title,           null: false, default: ""
      t.text :description,       null: false
      t.string :date,            null: false, default: ""
      t.string :place,           null: false, default: ""
      t.integer :district_id,    null: false
      t.integer :category_id,    null: false
      t.string :station,         null: false, default: ""
      t.text :price,             null: false
      t.string :website,         null: false, default: ""
      t.references :user,        null: false, foreign_key:true
      t.timestamps
    end
  end
end
