class AddProfileImageToDogs < ActiveRecord::Migration
  def change
    add_column :dogs, :profile_image, :string
  end
end
