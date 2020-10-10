class Hansakitochecks < ActiveRecord::Migration[5.2]
  def change
    add_column :checks, :hansaki, :string
  end
end
