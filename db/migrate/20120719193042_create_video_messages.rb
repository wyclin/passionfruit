class CreateVideoMessages < ActiveRecord::Migration
  def change
    create_table :video_messages do |t|
      t.string :name
      t.string :email
      t.string :video_link
      t.string :location

      t.timestamps
    end
  end
end
