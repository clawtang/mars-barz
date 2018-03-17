json.users @users do |user|
  json.first_name     user.first_name
  json.last_name      user.last_name
  json.email          user.email
  json.skill          user.skill
  json.upstream       user.upstream
  json.downstream     user.downstream
  json.x_pos          user.x_pos
  json.y_pos          user.y_pos
end
