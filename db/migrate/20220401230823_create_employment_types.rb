class CreateEmploymentTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :employment_types do |t|
      t.string :name, required: true
      t.integer :salary, default: 0, not: :null
      t.timestamps
    end
  end
end
