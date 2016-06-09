class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string    :first_name
      t.string    :last_name
      t.string    :email
      t.string    :address
      t.string    :state
      t.integer   :zipcode
    end
  end
end
