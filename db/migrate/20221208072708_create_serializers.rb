class CreateSerializers < ActiveRecord::Migration[7.0]
  def change
    create_table :serializers do |t|
      t.string :user

      t.timestamps
    end
  end
end
