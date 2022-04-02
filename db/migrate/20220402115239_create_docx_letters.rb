class CreateDocxLetters < ActiveRecord::Migration[6.1]
  def change
    create_table :docx_letters do |t|
      t.timestamps
    end
  end
end
