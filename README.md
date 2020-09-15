# README

micropost.user	Returns the User object associated with the micropost
user.microposts	Returns a collection of the user’s microposts
user.microposts.create(arg)	Creates a micropost associated with user
user.microposts.create!(arg)	Creates a micropost associated with user (exception on failure)
user.microposts.build(arg)	Returns a new Micropost object associated with user
user.microposts.find_by(id: 1)	Finds the micropost with id 1 and user_id equal to user.id

To get started with the app, clone the repo and then install the needed gems:

$ bundle install --without production
Next, migrate the database:

$ rails db:migrate
Finally, run the test suite to verify that everything is working correctly:

$ rails test
If the test suite passes, you'll be ready to run the app in a local server:

$ rails server
To begin our testing cycle, we need to run our test suite to verify that the tests currently pass. We can do this with the rails command as follows: $ rails db:migrate # Necessary on some systems $ rails test

find out the PID of the process: lsof -wni tcp:3000

to kill the process $ kill -9 PID

$ rails test:integration

$ rails console --sandbox

user.save User Create (0.6ms) INSERT INTO "users"

User.create create and save to database

foo.destroy

rake db:migrate:down VERSION=20100905201547

rails destroy model comments

$ rails db:migrate We can undo a single migration step using

$ rails db:rollback To go all the way back to the beginning, we can use

$ rails db:migrate VERSION=0

The first time db:migrate is run, it creates a file called db/development.sqlite3, which is an SQLite5 database. We can see the structure of the database by opening development.sqlite3 with DB Browser for SQLite.

we first generate an appropriate migration for the password_digest column. We can choose any migration name we want, but it’s convenient to end the name with to_users, since in this case Rails automatically constructs a migration to add columns to the users table. The result, with migration name add_password_digest_to_users, appears as follows: $ rails generate migration add_password_digest_to_users password_digest:string

Although our immediate motivation is making a page to show users, the single line resources :users doesn’t just add a working /users/1 URL; it endows our sample application with all the actions needed for a RESTful Users resource,6 along with a large number of named routes (Section 5.3.3) for generating user URLs. The resulting correspondence of URLs, actions, and named routes is shown in Table 7.1.

Gravatar is a free service that allows users to upload images and associate them with email addresses they control.

1: rails new app_name 2: bundle install --without production 3: rails db:migrate 4: rails test rails test:integration rails test:model 5: rails server `find out the PID of the process:`` lsof -wni tcp:3000 kill -9 PID 6: rails console rails console --sandbox 7: rails generate rails generate migration add_password_digest_to_users password_digest:string

the belongs_to relationship is not optional by default. When “belongs_to” is added to a model, it also adds a validation to ensure that the associated object is present. If it is not present then the record will be considered invalid and will not save. This behavior can be disabled if necessary by adding “:optional => true” to the model.
