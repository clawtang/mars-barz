class User < ApplicationRecord
  has_many :skills
  has_many :relationships
  has_many :requests
  has_secure_password

  def self.search(search)
    where("skill LIKE ?", "#{search}")
  end

  def full_name
    "#{first_name} #{last_name}"
  end
  
end
