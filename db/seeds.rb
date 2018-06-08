# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
# movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# Character.create(name: 'Luke', movie: movies.first)

########################
# Supporting Variables #
########################

image_path = "#{Rails.root}/app/assets/images/testbasket.jpg"
image_file = File.new(image_path)

############
# Wave One #
############

states = ['Alabama', 'Alaska', 'Arizona', 'Arkansas', 'California', 'Colorado', 'Connecticut',
  'Delaware', 'District of Columbia', 'Florida', 'Georgia', 'Hawaii', 'Idaho', 'Illinois',
  'Indiana', 'Iowa', 'Kansas', 'Kentucky', 'Louisiana', 'Maine', 'Maryland', 'Massachusetts',
  'Michigan', 'Minnesota', 'Mississippi', 'Missouri', 'Montana', 'Nebraska', 'Nevada', 'New Hampshire',
  'New Jersey', 'New Mexico', 'New York', 'North Carolina', 'North Dakota', 'Ohio', 'Oklahoma', 'Oregon',
  'Pennsylvania', 'Rhode Island', 'South Carolina', 'South Dakota', 'Tennessee', 'Texas', 'Utah', 'Vermont',
  'Virginia', 'Washington', 'West Virginia', 'Wisconsin', 'Wyoming']

countries = ['USA']

countries.each do |country|
  Country.create({country_name: country})
end

states.each do |state|
  State.create({state_name: state, country_id: 1})
end

(1..12).each do |n|
  item = Item.create(name: "Basket #{n}", description: 'Test Basket', available: true, price: 150)
  ItemImage.create(item: item, file: ActionDispatch::Http::UploadedFile.new(
  :filename => File.basename(image_file),
  :tempfile => image_file,
  # detect the image's mime type with MIME if you can't provide it yourself.
  :type => MIME::Types.type_for(image_path).first.content_type))
end

OrderLineStatus.create([
  {status: 'Unfulfilled'},
  {status: 'Preparing'},
  {status: 'Fulfilled'}])

OrderStatus.create([
  {status: 'Placed'},
  {status: 'In Progress'},
  {status: 'Completed'}])

############
# Wave Two #
############

User.create!([
  {email: "admin@test.com", password: "password", password_confirmation: "password", encrypted_password: "$2a$11$kFhnk9Jc296gd/XZKxm5TelxwYdFMLUWmcWaYVusJsRIWlUKM58CK", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, first_name: "Ethan", last_name: "Orcutt", address: "15306 Highland Elm St", city: "Houston", state_id: 44, zip: 77433, active: nil, phone: nil, admin: true, address_two: nil},
  {email: "user@test.com", password: "password", password_confirmation: "password", encrypted_password: "$2a$11$nU5NRqLtoxistucQP7wczuYKMLhbj9fGkuuZEwqGEEwFNWBL8utCa", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, first_name: "Ethan", last_name: "Orcutt", address: "15306 Highland Elm St", city: "Houston", state_id: 44, zip: 77433, active: nil, phone: 7124123476, admin: false, address_two: nil},
  {email: "tuantonyd@gmail.com", password: "password", password_confirmation: "password", encrypted_password: "$2a$11$/1.hscBy4kFsP/imQlfLde9g5DgX2V447yM/OcW7//OQ2yadQGyjy", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 2, current_sign_in_at: "2017-11-13 23:39:26", last_sign_in_at: "2017-11-10 04:13:06", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", first_name: "Tuan", last_name: "Do", address: "5000 Peace St.", city: "HOUSTON", state_id: 44, zip: 77023, active: nil, phone: 8322024827, admin: false, address_two: nil},
  {email: "pmiller@gmail.com", password: "password", password_confirmation: "password", encrypted_password: "$2a$11$c6.paLE40QeFpQ2a07tPEO3oQIiS87bzpLKurdJuWK.kwFiUh7oXe", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2017-11-14 05:49:03", last_sign_in_at: "2017-11-14 05:49:03", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", first_name: "Patten", last_name: "Miller", address: "1146 Globe St", city: "Houston", state_id: 44, zip: 77082, active: nil, phone: 8329665376, admin: false, address_two: nil},
  {email: "oliver.heart.gifts@gmail.com", password: "password", password_confirmation: "password", encrypted_password: "$2a$11$ZOo.IACCUcTR5VSHB2dvEes0RYpE6FzC/mGeFZUO0y0yfrk1F1xMu", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 3, current_sign_in_at: "2017-11-14 05:49:45", last_sign_in_at: "2017-11-13 23:40:51", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", first_name: "Linda", last_name: "Hickman", address: "15306 Highland Elm St", city: "Houston", state_id: 44, zip: 77433, active: nil, phone: nil, admin: true, address_two: nil},
  {email: "mashalsidd@yahoo.com", password: "password", password_confirmation: "password", encrypted_password: "$2a$11$XlWpQogyXppZFRPEBwxGbulOLBtsVg6zt/NvQmuc1WJTIAzlXtAAS", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2017-11-14 05:51:45", last_sign_in_at: "2017-11-14 05:51:45", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", first_name: "Mashal", last_name: "Siddiqu", address: "15547 Debs St.", city: "Houston", state_id: 44, zip: 77021, active: nil, phone: 8321241573, admin: false, address_two: nil},
  {email: "asiansaucewin@gmail.com", password: "password", password_confirmation: "password", encrypted_password: "$2a$11$I97SB3ceGdVQxBLISWiROuGO.I1S.O0TPrM.5iCee6HVEZRV0v/TC", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2017-11-14 05:54:36", last_sign_in_at: "2017-11-14 05:54:36", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", first_name: "Phuc", last_name: "Nguyen", address: "1363 Mckie St.", city: "Austin", state_id: 44, zip: 78752, active: nil, phone: 8322122942, admin: false, address_two: nil},
  {email: "ramirolvrs51@gmail.com", password: "password", password_confirmation: "password", encrypted_password: "$2a$11$3GBgTJCOwzbGXNN9yLOoYuL8xsILsBjvsPuOibbPHbDb1tI6gckFS", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2017-11-14 05:55:50", last_sign_in_at: "2017-11-14 05:55:50", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", first_name: "Ramiro", last_name: "Olivares", address: "1191 Boxer St.", city: "Houston", state_id: 44, zip: 77247, active: nil, phone: 8322005372, admin: false, address_two: nil},
  {email: "ltorres@sbcglobal.net", password: "password", password_confirmation: "password", encrypted_password: "$2a$11$I4zFB7DMsd.K4hfekGVgN.w1WuP6wXcf1lMM2cEuFkJQnXGoQ6v1S", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2017-11-14 05:57:10", last_sign_in_at: "2017-11-14 05:57:10", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", first_name: "Leslie", last_name: "Torres", address: "7312 Cardinal Rd.", city: "Houston", state_id: 44, zip: 77089, active: nil, phone: 4021825210, admin: false, address_two: nil},
  {email: "tuantonyd@tester.com", password: "password", password_confirmation: "password", encrypted_password: "$2a$11$4Ur3tGQxPdaXPHYz8YGXxup1jSwr9.hipiSdzWIiv2qQNRwLq0Bym", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2017-11-14 06:00:05", last_sign_in_at: "2017-11-14 06:00:05", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", first_name: "Tuan", last_name: "Do", address: "5135 Pease St.", city: "HOUSTON", state_id: 44, zip: 77023, active: nil, phone: 8322024827, admin: false, address_two: nil},
  {email: "chummings@gmail.com", password: "password", password_confirmation: "password", encrypted_password: "$2a$11$4ZPPkrvPGgD4/33caDB50uBk/2R1tCnlOHd3vBoH12.JBFF4AM0h.", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2017-11-14 06:01:45", last_sign_in_at: "2017-11-14 06:01:45", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", first_name: "Chris", last_name: "Hummings", address: "6234 41 St.", city: "HOUSTON", state_id: 44, zip: 77044, active: nil, phone: 2813552554, admin: false, address_two: nil},
  {email: "lbrock@aol.com", password: "password", password_confirmation: "password", encrypted_password: "$2a$11$d/qipjbXVV2nVosSiAqVoesUxqK15M8HHLdYEfrHxK2hEN7L/Zt/6", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2017-11-14 06:04:17", last_sign_in_at: "2017-11-14 06:04:17", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", first_name: "Brock", last_name: "Love", address: "7212 Jean St.", city: "Dallas", state_id: 44, zip: 85815, active: nil, phone: 4023174023, admin: false, address_two: nil},
  {email: "drobbins@gmail.com", password: "password", password_confirmation: "password", encrypted_password: "$2a$11$z8s.gnrBb.g/s5Xra3XjZO87DIKDbtaY9ewqHt2M55slajyYQj2aK", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2017-11-14 06:06:06", last_sign_in_at: "2017-11-14 06:06:06", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", first_name: "Derrick", last_name: "Robbins", address: "692 Park Place St.", city: "Houston", state_id: 44, zip: 77294, active: nil, phone: 8328214712, admin: false, address_two: nil},
  {email: "rickybobbygar@gmail.com", password: "password", password_confirmation: "password", encrypted_password: "$2a$11$ZLof9wqaIM5GbEzsIioD1OmeihPJjPhxvN6YMlr6WPyrh2PbWwrWm", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 2, current_sign_in_at: "2017-11-14 06:09:46", last_sign_in_at: "2017-11-14 06:09:30", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", first_name: "Ricky", last_name: "Garcia", address: "3324 McSlick Dr. ", city: "Austin", state_id: 44, zip: 78756, active: nil, phone: 5124381351, admin: false, address_two: nil},
  {email: "ksmithens@gmail.com", password: "password", password_confirmation: "password", encrypted_password: "$2a$11$U2KdKvYF17uXsKDFOcEXGu9ryMbYmzTEk1pvJKKDhs3RV3lE/tTRC", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2017-11-14 16:35:51", last_sign_in_at: "2017-11-14 16:35:51", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", first_name: "Kathy", last_name: "Smith", address: "8492 Milby St.", city: "New Orleans", state_id: 19, zip: 77114, active: nil, phone: 5042398472, admin: false, address_two: ""},
  {email: "rdupre@lsu.edu", password: "password", password_confirmation: "password", encrypted_password: "$2a$11$.J24yTJxW5PbR8TX/yxDPuF3sOBMF7iqCslXdJgCRGFaPir8FX9SO", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2017-11-14 16:44:25", last_sign_in_at: "2017-11-14 16:44:25", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", first_name: "Randy", last_name: "Dupre", address: "1581 Milan St.", city: "Lake Charles", state_id: 19, zip: 77003, active: nil, phone: 5022452578, admin: false, address_two: nil},
  {email: "cbriones@aol.com", password: "password", password_confirmation: "password", encrypted_password: "$2a$11$h6KUgePbC1aWQr/Pkz3tVuJ/43u40BCoKyaDZeMULVRZnGmlSU3d2", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2017-11-14 17:40:25", last_sign_in_at: "2017-11-14 17:40:25", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", first_name: "Carlos", last_name: "Briones", address: "5238", city: "Lafayette", state_id: 19, zip: 77027, active: nil, phone: 2258274936, admin: false, address_two: nil},
  {email: "ghaywall@gmail.com", password: "password", password_confirmation: "password", encrypted_password: "$2a$11$IbOr686MDVzLlFVCCecKyuAXfcU8l0dFDUPcZyucUrJzaOZKUEcHC", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2017-11-14 17:43:07", last_sign_in_at: "2017-11-14 17:43:07", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", first_name: "Gordan", last_name: "Haywall", address: "8261 Load Rd.", city: "Houston", state_id: 19, zip: 77014, active: nil, phone: 9852175128, admin: false, address_two: nil},
  {email: "wex.bryant@gmail.com", password: "password", password_confirmation: "password", encrypted_password: "$2a$11$1vDbOVgkzaxdczUIkPwTweTglbuz88EsYu4qxIcyVP6oG6kghH7/e", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2017-11-14 17:46:57", last_sign_in_at: "2017-11-14 17:46:57", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", first_name: "Wex", last_name: "Bryant", address: "3461", city: "Sante Fe", state_id: 32, zip: 87124, active: nil, phone: 5052128513, admin: false, address_two: nil},
  {email: "k.livingz@yahoo.com", password: "password", password_confirmation: "password", encrypted_password: "$2a$11$80olviXXO.VZpyOMiQd2o.MCsd2c3UTv6CMAOIKdw85kj/krYIQW2", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2017-11-14 17:48:52", last_sign_in_at: "2017-11-14 17:48:52", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", first_name: "Kyrie", last_name: "Livington", address: "18371 South St.", city: "Albuquerque", state_id: 32, zip: 87213, active: nil, phone: 5752183416, admin: false, address_two: nil},
  {email: "lllant@gmail.com", password: "password", password_confirmation: "password", encrypted_password: "$2a$11$NA8s/xdNQ0E0cYu4czun3OZa8jFkH7O4VUPUMEVIxVpYnMtl9beIK", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 2, current_sign_in_at: "2017-11-14 17:56:17", last_sign_in_at: "2017-11-14 17:55:25", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", first_name: "Lonzo", last_name: "Antetokounmpo", address: "1847 Firebrick Rd.", city: "Taos", state_id: 32, zip: 87212, active: nil, phone: 5752918521, admin: false, address_two: ""},
  {email: "bwindslow@yahoo.com", password: "password", password_confirmation: "password", encrypted_password: "$2a$11$hVa.ukz.1egQ6ddaRA6Oa.FCdQZmkWtSqRNM0UeqH9I3xpTFPZ986", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2017-11-14 17:59:38", last_sign_in_at: "2017-11-14 17:59:38", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", first_name: "Bart", last_name: "Winslow", address: "8912", city: "Los Angeles", state_id: 5, zip: 90201, active: nil, phone: 2138481481, admin: false, address_two: nil},
  {email: "c.parker@gmail.com", password: "password", password_confirmation: "password", encrypted_password: "$2a$11$B3QNzRVPr/RR2nb7vtm8cOCbZgm12lA.eF96nJXSs2dtCypMi0PTy", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2017-11-14 18:02:23", last_sign_in_at: "2017-11-14 18:02:23", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", first_name: "Candice", last_name: "Parker", address: "1830 Leeland St.", city: "Brooklyn", state_id: 33, zip: 10009, active: nil, phone: 2124371921, admin: false, address_two: nil}
])
