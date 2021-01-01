class ChangeCorpName < ActiveRecord::Migration[6.0]
  def change
    rename_column :articles, :corp, :corps
  end
end
