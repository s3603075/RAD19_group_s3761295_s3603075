json.id @course.id
json.name @course.course_name
json.prerequisite @course.prerequisite
json.description @course.description
json.picture @course.picture
if !@course.user.admin
  json.coordinator @course.user.name
end
json.likes @course.liked
json.dislikes @course.disliked


