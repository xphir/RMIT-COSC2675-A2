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

# Create courses
# Real course information is referenced from http://www1.rmit.edu.au/courses/
courseOne = Course.new(name: 'Course One', user_id: 1, description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.')
courseTwo = Course.new(name: 'Course Two', user_id: 3, description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.')
courseThree = Course.new(name: 'Course Three', user_id: 2, description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.')
courseFour = Course.new(name: 'Course Four', user_id: 2, description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.')
courseFive = Course.new(name: 'Course Five', user_id: 4, description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.')
courseSix = Course.new(name: 'Course Six', user_id: 5, description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.')
courseSeven = Course.new(name: 'Course Seven', user_id: 6, description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.')
courseEight = Course.new(name: 'Course Eight', user_id: 7, description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.')
courseNine = Course.new(name: 'Course Nine', user_id: 2, description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.')
courseTen = Course.new(name: 'Course Ten', user_id: 2, description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.')
courseEleven = Course.new(name: 'Course Eleven', user_id: 8, description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.')
courseTwelve = Course.new(name: 'Course Twelve', user_id: 7, description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.')
courseThirteen = Course.new(name: 'Course Thirteen', user_id: 8, description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.')
courseFourteen = Course.new(name: 'Course Fourteen', user_id: 8, description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.')
courseFifteen = Course.new(name: 'Course Fifteen', user_id: 1, description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.')
courseSixteen = Course.new(name: 'Course Sixteen', user_id: 1, description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.')



#Create categories
categoryOne = Category.create(name: 'Web Development')
categoryTwo = Category.create(name: 'Java')
categoryThree = Category.create(name: 'Full Stack Dev')
categoryFour = Category.create(name: 'iOS Engineering')

# Assign Courses to Categories
courseOne.categories << categoryOne
courseOne.categories << categoryTwo
courseOne.categories << categoryThree

courseTwo.categories << categoryOne
courseThree.categories << categoryOne
courseFour.categories << categoryThree
courseFive.categories << categoryThree
courseSix.categories << categoryTwo
courseSeven.categories << categoryTwo
courseEight.categories << categoryFour
courseNine.categories << categoryTwo
courseTen.categories << categoryTwo
courseTen.categories << categoryThree
courseEleven.categories << categoryThree
courseTwelve.categories << categoryThree
courseThirteen.categories << categoryFour
courseFourteen.categories << categoryTwo
courseFifteen.categories << categoryFour
courseSixteen.categories << categoryTwo

# Create Locations
# Locations Format xx.xx.xx
locationOne = Location.create(name: '14.10.31')
locationTwo = Location.create(name: '14.08.26')
locationThree = Location.create(name: '14.10.30')
locationFour = Location.create(name: '14.10.30')

# Assign Courses to Locations
courseOne.locations << locationOne
courseTwo.locations << locationOne
courseThree.locations << locationThree
courseFour.locations << locationOne
courseFive.locations << locationThree
courseSix.locations << locationOne
courseSeven.locations << locationOne
courseEight.locations << locationOne
courseNine.locations << locationOne
courseTen.locations << locationTwo
courseEleven.locations << locationThree
courseTwelve.locations << locationThree
courseThirteen.locations << locationThree
courseFourteen.locations << locationThree
courseFifteen.locations << locationTwo
courseSixteen.locations << locationTwo

# Create Prerequisites
prerequisiteOne = Prerequisite.create(id: courseFourteen.id)
prerequisiteTwo = Prerequisite.create(id: courseFifteen.id)
prerequisiteThree = Prerequisite.create(id: courseSixteen.id)

# Assign Courses to Prerequisites
#courseOne.prerequisites << prerequisiteOne
#courseTwo.prerequisites << prerequisiteOne
#courseThree.prerequisites << prerequisiteThree
#courseEight.prerequisites << prerequisiteThree
#courseTwelve.prerequisites << prerequisiteTwo

# Save courses
courseOne.save(validate: true)
courseTwo.save(validate: true)
courseThree.save(validate: true)
courseFour.save(validate: true)
courseFive.save(validate: true)
courseSix.save(validate: true)
courseSeven.save(validate: true)
courseEight.save(validate: true)
courseNine.save(validate: true)
courseTen.save(validate: true)
courseEleven.save(validate: true)
courseTwelve.save(validate: true)
courseThirteen.save(validate: true)
courseFourteen.save(validate: true)
courseFifteen.save(validate: true)
courseSixteen.save(validate: true)