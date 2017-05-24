class FixAasmIndexToOrder < ActiveRecord::Migration[5.0]
  def change
    remove_index :orders, name: "index_orders_on_aadm_state"
  end
end
