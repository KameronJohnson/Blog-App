class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.column :comment_text, :string
      t.column :post_id, :integer

      t.timestamps
    end
  end
end
