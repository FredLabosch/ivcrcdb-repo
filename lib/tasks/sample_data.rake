namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    make_patients
  end
end

def make_patients
  admin = Patient.create!( name:     "Patient", first_name: "Example",
                        gender: "male",
                        birthday: "burzeltag",
                        age: 99,
                        street: "Teststreet",
                        zip_code: "12345",
                        city: "New York",
                        phone: "030 / 123456789",
                        cell_phone: "0160 / 123456789",
                        naa: "testNaa")

  99.times do |n|
    name  = Faker::Name.last_name
    first_name = Faker::Name.first_name
    gender = "male"
    birthday = "burzeltag"
    age = Faker::Number.number(2)
    street = Faker::Address.street_name
    zip_code = Faker::Address.zip_code
    city = Faker::Address.city
    phone = Faker::PhoneNumber.phone_number
    cell_phone = Faker::PhoneNumber.cell_phone
    naa = Faker::Lorem.sentence

    Patient.create!(name:     name,
                 first_name: first_name,
                 gender: gender,
                 birthday: birthday,
                 age: age,
                 street: street,
                 zip_code: zip_code,
                 city: city,
                 phone: phone,
                 cell_phone: cell_phone,
                 naa: naa)
  end
end