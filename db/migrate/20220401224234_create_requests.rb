class CreateRequests < ActiveRecord::Migration[6.1]
  def change
    create_table :requests do |t|
      t.string :name, required: true
      t.string :email, required: true
      t.string :address, required: true
      t.integer :employment_id
      t.date :start_date
      t.date :end_date
      t.date :pay_start
      t.date :pay_end
      t.timestamps
    end
  end
end
