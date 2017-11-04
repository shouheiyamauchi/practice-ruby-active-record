require 'active_record'

class Migration < ActiveRecord::Migration[5.0]
  def change
    create_table(:users) do |t|
      t.column :name, :string
    end
  end
end
