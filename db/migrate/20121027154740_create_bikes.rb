class CreateBikes < ActiveRecord::Migration
  def change
    create_table :bikes do |t|
      t.string :url
      t.string :title

      t.timestamps
    end
  end
end
