class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.string :name
      t.string :orgtype
      t.string :orgUrl

      t.timestamps null: false
    end
  end
end
