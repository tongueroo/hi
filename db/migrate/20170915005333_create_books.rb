class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
    end
  end
end
