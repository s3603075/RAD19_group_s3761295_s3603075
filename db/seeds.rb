# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# admin = User.create(name: "admin", email: "admin", password_digest: "$2a$06$E.kd13KU5XATLL15NvIHuu1291C5Zo57zP53iFMcvYpaZbkPKYj0e", password: "$2a$06$E.kd13KU5XATLL15NvIHuu1291C5Zo57zP53iFMcvYpaZbkPKYj0e", admin: true)
# admin.save(validate: false)


admin1 = User.create(name: "admin", email: "admin1", password_digest: "password", password: "password", admin: true)
admin1.save(validate: false)