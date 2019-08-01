class CreateSpecialtyDoctors < ActiveRecord::Migration[5.2]
  def change
    create_table :specialty_doctors do |t|
      doctor_id INTEGER,
      specialty_id INTEGER,
      FOREIGN KEY(doctor_id) REFERENCES doctors(id),
      FOREIGN KEY(specialty_id) REFERENCES specialties(id),
      t.timestamps
    end
  end
end
