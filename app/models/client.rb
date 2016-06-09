class Client < ActiveRecord::Base
  validates :name, :email, presence: true
end
