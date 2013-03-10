class CreateSubmits < ActiveRecord::Migration
  def change
    create_table :submits do |t|
      t.string :title
      t.string :link

      t.timestamps
    end
  end
end
