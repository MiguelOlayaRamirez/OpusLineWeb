class CreateContractProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :contract_profiles do |t|

      t.timestamps
    end
  end
end
