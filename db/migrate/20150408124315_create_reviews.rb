class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.text :rev
	  t.references :post, index: true
      t.timestamps
    end
  end
end
