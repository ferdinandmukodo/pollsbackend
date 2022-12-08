class CreateSerializers < ActiveRecord::Migration[7.0]
  def change
    create_table :serializers do |t|
      t.string :poll

      t.timestamps
    end
  end
end
