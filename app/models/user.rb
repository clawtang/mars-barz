class User < ApplicationRecord
  has_many :skills
  has_many :relationships
  has_secure_password

  def self.search(search)
    where("skill LIKE ?", "#{search}")
  end
end
