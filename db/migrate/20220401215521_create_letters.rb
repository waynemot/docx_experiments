class CreateLetters < ActiveRecord::Migration[6.1]
  def change
    create_table :letters do |t|
      t.belongs_to :request
      t.integer :doc_template_id
      t.timestamps
    end
  end
end
