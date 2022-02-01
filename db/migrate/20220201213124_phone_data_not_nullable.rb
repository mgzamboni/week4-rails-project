class PhoneDataNotNullable < ActiveRecord::Migration[6.1]
  def change
    change_column_null :phones, :number, false
    change_column_null :phones, :type, false
    change_column_null :phones, :main, false
  end
end
