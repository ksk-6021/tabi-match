class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string     :trip_date,           null: false
      t.string     :place,               null: false
      t.string     :tytle,               null: false
      t.text       :content,             null: false
      #t.references :user,                foreign_key: true
      t.timestamps
    end
  end
end
