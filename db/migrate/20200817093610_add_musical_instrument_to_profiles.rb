class AddMusicalInstrumentToProfiles < ActiveRecord::Migration[6.0]
  def change
    add_column :profiles, :musical_instrument, :integer
  end
end
