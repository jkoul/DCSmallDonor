class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.date :date
      t.string :source
      t.string :type
      t.string :url

      t.timestamps null: false
    end
  end
end
