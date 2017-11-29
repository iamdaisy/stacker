class CreateTechstacks < ActiveRecord::Migration
  def change
    create_table :techstacks do |t|
      t.string :company_name
      t.text :company_desc
      t.string :service

      t.timestamps null: false
    end
  end
end
