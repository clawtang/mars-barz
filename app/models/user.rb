class User < ApplicationRecord
  has_many :emails
  has_many :skills
  has_secure_password

  def self.search(search)
    where("skill LIKE ?", "#{search}")
  end
end
