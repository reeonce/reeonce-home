class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :email
      t.string :title
      t.text :text

      t.timestamps
    end
  end
end
