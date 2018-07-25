class AddPasswordDigestToTasks < ActiveRecord::Migration[5.2]
  def change
    add_column :tasks, :password_digest, :string
  end
end
