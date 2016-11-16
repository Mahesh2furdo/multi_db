class CreateFurdos < ActiveRecord::Migration[5.0]
  def change
    create_table :furdos do |t|
      t.string :client_name
      t.string :location

      t.timestamps
    end
  end
end
