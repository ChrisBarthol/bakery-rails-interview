class Client < ActiveRecord::Base
  validates :first_name, :last_name, :email, presence: true

  def name
    "#{first_name} #{last_name}"
  end
end
