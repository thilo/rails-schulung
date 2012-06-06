class CreateBeamTargets < ActiveRecord::Migration
  def change
    create_table :beam_targets do |t|
      t.integer :density
      t.integer :volume

      t.timestamps
    end
  end
end
