# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# user = User.create({id: 1, admin: true, email: 'jakobinwins@gmail.com', encrypted_password: '$2a$11$5fLUUQX30YkEXC6Z7m7WbeUlt6ApihF8Nrw5G1g.aeCrEIubIPArq', created_at: '2019-08-16 00:41:20.207774', updated_at: '2019-08-16 00:41:20.207774'})
user = User.new
user.email = 'jakobinwins@gmail.com'
user.password = 'ibanez12'
user.password_confirmation = 'ibanez12'
# user.encrypted_password = '$2a$11$5fLUUQX30YkEXC6Z7m7WbeUlt6ApihF8Nrw5G1g.aeCrEIubIPArq'
user.save!
user.avatar.attach(io: File.open('app/assets/images/dragon.png'), filename: 'dragon.png', content_type: 'image/png')
