#Create admin account
User.create!(name:  "RMIT Admin",
  email: "rmit.admin@rmit.edu.au",
  password:              "password",
  password_confirmation: "password",
  admin: true)

# Build User data
userData = [
  ['Eddard Stark', 'Eddard.Stark@rmit.edu.au', 'RADrmit123'],
  ['Robert Baratheon', 'Robert.Baratheon@rmit.edu.au', 'RADrmit123'],
  ['Jaime Lannister', 'Jaime.Lannister@rmit.edu.au', 'RADrmit123'],
  ['Catelyn Stark', 'Catelyn.Stark@rmit.edu.au', 'RADrmit123'],
  ['Jon Snow', 'Jon.Snow@rmit.edu.au', 'RADrmit123'],
  ['Robb Stark', 'Robb.Stark@rmit.edu.au', 'RADrmit123'],
  ['Khal Drogo', 'Khal.Drogo@rmit.edu.au', 'RADrmit123'],
  ['Samwell Tarly', 'Samwell.Tarly@rmit.edu.au', 'RADrmit123'],
  ['Margaery Tyrell', 'Margaery.Tyrell@rmit.edu.au', 'RADrmit123'],
  ['Roose Bolton', 'Roose.Bolton@rmit.edu.au', 'RADrmit123'],
]

# Create user data
userData.each do |name, email, password|
  User.create(name: name, email: email, password: password, password_confirmation: password)
end