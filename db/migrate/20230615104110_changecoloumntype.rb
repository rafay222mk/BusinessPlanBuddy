class Changecoloumntype < ActiveRecord::Migration[7.0]
  def change
    change_column :questions, :type, :string
  end
end
