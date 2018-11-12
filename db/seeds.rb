# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = [
  {
    email: "maria@mail.com",
    password: "123456",
    admin: true
  }
]

languages = [
  {
    code:"PT",
    name:"portuguese"
  },
  {
    code:"ENG",
    name:"english"
  }
]

contacts = [
  {
    name:"Lisboa",
    email:"solidariedade_imigrante@hotmail.com",
    address:"Rua da Madalena, n8 - 2, 1100-321 Lisboa",
    phone_number:"21 887 07 13",
    schedule:"Mon-Fri: 10h - 21h | Sat: 10h - 14h"
  },
  {
    name:"Beja",
    email:"solim.beja@sapo.pt",
    address:"Rua Mestre Manuel, n13 – r/c, 7800-307 Beja",
    phone_number:"284 323 980",
    schedule:" "
  }
]
links = [
  {
    name:"Solim",
    link:"http://www.solimigrante.org",
  },
  {
    name:"SNS",
    link:"https://www.sns.gov.pt/sns/servico-nacional-de-saude/"
  }
]


  puts "Cleaning up database"
  User.delete_all
  Language.delete_all
  Contact.delete_all
  Link.delete_all

  puts "Creating Users"
  users.each do |user|
    User.create(user)
  end

  puts "Creating Languages"
  languages.each do |language|
    Language.create(language)
  end

  puts "Creating Contacts"
  contacts.each do |contact|
    Contact.create(contact)
  end

  puts "Creating Links"
  links.each do |link|
    Link.create(link)
  end


  puts "Created #{User.count} user"
  puts "Created #{Language.count} languages"
  puts "Created #{Contact.count} contacts"
  puts "Created #{Link.count} links"
