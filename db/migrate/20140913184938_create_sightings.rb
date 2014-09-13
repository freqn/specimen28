class CreateSightings < ActiveRecord::Migration
  def change
    create_table :sightings do |t|
      t.column :latitude, :string
      t.column :longitute, :string
      t.column :date, :string
      t.column :notes, :string
      t.column :species_id, :integer

      t.timestamps
    end
  end
end
