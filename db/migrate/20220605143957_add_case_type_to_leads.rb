class AddCaseTypeToLeads < ActiveRecord::Migration[7.0]
  def change
    add_column :leads, :case_type, :string
  end
end
