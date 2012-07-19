class AddFieldsToMessages < ActiveRecord::Migration
  def change
  	change_table :messages do |t|
  		t.string :first_name, :last_name, :email, :subject, :body
  	end
  end
 
end
