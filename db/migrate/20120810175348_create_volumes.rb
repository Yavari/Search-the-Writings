class CreateVolumes < ActiveRecord::Migration
  def change
    create_table :volumes do |t|
      t.string :title
      t.string :author
      t.text :body

      t.timestamps
    end
  end
end
