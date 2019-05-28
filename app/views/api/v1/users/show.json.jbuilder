json.id @user.id
json.name @user.name
if !@user.admin
  json.contact_email @user.email
end




