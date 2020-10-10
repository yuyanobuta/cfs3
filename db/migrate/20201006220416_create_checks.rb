class CreateChecks < ActiveRecord::Migration[5.2]
  def change
    create_table :checks do |t|
     
      t.string :syu
      t.string :cari
      t.string :des
      t.string :no
      t.string :geta
      t.string :pare
      t.string :tno
      t.string :bikou

      t.timestamps
    end
  end
end
