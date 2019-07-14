class ScoreRename < ActiveRecord::Migration[5.2]
  def change
rename_column :scores, :values, :value
  end
end
