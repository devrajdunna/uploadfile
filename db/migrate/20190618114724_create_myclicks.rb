class CreateMyclicks < ActiveRecord::Migration[5.2]
  def change
    create_table :myclicks do |t|
      t.string :name
      t.string :attachment
      t.string :type

      t.timestamps
    end
  end
end
