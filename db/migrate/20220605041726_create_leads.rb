class CreateLeads < ActiveRecord::Migration[7.0]
  def change
    create_table :leads do |t|
      t.string :name
      t.string :telephone
      t.string :comment

      t.timestamps
    end
  end
end
