class CreateSpecialties < ActiveRecord::Migration[5.2]
  def change
    create_table :specialties do |t|
      t.string :proctologue
      t.string :gynecologue
      t.string :urologue
      t.timestamps
    end
  end
end
