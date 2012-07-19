class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
    	t.string :first_name
    	t.string :last_name
    	t.string :email
    	t.string :subject
    	t.string :body
      	t.timestamps
    end
  end
end	