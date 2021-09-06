class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :last_name
      t.string :first_name
      t.date :birth_date
      t.string :sexe
      t.integer :matricule

      t.timestamps
    end
    add_index :students, :matricule, unique: true
  end
end
