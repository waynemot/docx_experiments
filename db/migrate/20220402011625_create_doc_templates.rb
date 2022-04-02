class CreateDocTemplates < ActiveRecord::Migration[6.1]
  def change
    create_table :doc_templates do |t|
      t.string :name, required: true
      t.text :variable_hash
      t.timestamps
    end
  end
end
