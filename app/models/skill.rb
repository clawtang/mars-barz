class Skill < ApplicationRecord
  belongs_to :user, optional: true

  def self.search(search)
    where("skill_name LIKE ?", "#{search}")
  end
end
