class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.interger, :product_id
      t.interger, :user_id
      t.text, :description
      t.interger, :rating
      t.datetime, :createdat
      t.datetime :updateat

      t.timestamps null: false
    end
  end
end
