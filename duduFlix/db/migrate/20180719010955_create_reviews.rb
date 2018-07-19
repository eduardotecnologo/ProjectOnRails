class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :​rating
      t.text :​description
      t.references :reviewable, polymorphic: true
      t.references :​user

      t.timestamps
    end
  end
end
