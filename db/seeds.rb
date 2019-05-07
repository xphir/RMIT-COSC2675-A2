# Create admin account
adminPassword = '1#Password'
User.create!(name:  "RMIT Admin",
  email: "rmit.admin@rmit.edu.au",
  password:              adminPassword,
  password_confirmation: adminPassword,
  admin: true)

# Password can't be blank
# Password must contain at least a lowercase letter, an uppercase, a digit, a special character and 8+ characters
# Build & Create user data (Coordinators)
password = '@RADrmit123'
userOne = User.create(name: 'Eddard Stark', email: 'Eddard.Stark@rmit.edu.au', password: password, password_confirmation: password)
userTwo = User.create(name: 'Robert Baratheon', email: 'Robert.Baratheon@rmit.edu.au', password: password, password_confirmation: password)
userThree = User.create(name: 'Jaime Lannister', email: 'Jaime.Lannister@rmit.edu.au', password: password, password_confirmation: password)
userFour = User.create(name: 'Catelyn Stark', email: 'Catelyn.Stark@rmit.edu.au', password: password, password_confirmation: password)
userFive = User.create(name: 'Jon Snow', email: 'Jon.Snow@rmit.edu.au', password: password, password_confirmation: password)
userSix = User.create(name: 'Robb Stark', email: 'Robb.Stark@rmit.edu.au', password: password, password_confirmation: password)
userSeven = User.create(name: 'Khal Drogo', email: 'Khal.Drogo@rmit.edu.au', password: password, password_confirmation: password)
userEight = User.create(name: 'Samwell Tarly', email: 'Samwell.Tarly@rmit.edu.au', password: password, password_confirmation: password)
# userNine = User.create(name: 'Margaery Tyrell', email: 'Margaery.Tyrell@rmit.edu.au', password: password, password_confirmation: password)
# userTen = User.create(name: 'Roose Bolton', email: 'Roose.Bolton@rmit.edu.au', 'RADrmit123', password: password, password_confirmation: password)

