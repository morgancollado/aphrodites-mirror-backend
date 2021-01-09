class Addreviewavgtomakeups < ActiveRecord::Migration[6.0]
  def change
    add_column :makeups, :reviewavg, :integer, default: 0
  end
end
