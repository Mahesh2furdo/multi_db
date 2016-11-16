class CreateSamples < ActiveRecord::Migration[5.0]
  def change
    create_table :samples do |t|
      t.string :name
      t.string :area
      t.string :location

      t.timestamps
    end
  end
end
