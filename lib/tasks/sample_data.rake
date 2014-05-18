namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    make_patients
  end
end

def make_patients
  99.times do |n|
    name  = Faker::Name.last_name
    first_name = Faker::Name.first_name
    gender = "male"
    birthday = rand(10..100).years.ago
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
                 street: street,
                 zip_code: zip_code,
                 city: city,
                 phone: phone,
                 cell_phone: cell_phone,
                 naa: naa)
  end
end
