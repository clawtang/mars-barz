class Relationship < ApplicationRecord
  belongs_to :user

  def user_name
    "#{user.first_name} #{user.last_name}"
  end

  def recipient_name
    "#{User.find(recipient).first_name} #{User.find(recipient).last_name}"
  end

  def user_skill
    user.skill
  end

  def recipient_skill
    User.find(recipient).skill
  end
end
