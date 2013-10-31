class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.text :content
      t.references :user, index: true
      t.references :message, index: true

      t.timestamps
    end
  end
end
