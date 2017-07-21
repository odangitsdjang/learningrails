# Basically a step by step of what I did.

1. Create rails directory, add it to GitHub, etc. (MAKE SURE TO CREATE IT WITH POSTGRESQL IN THIS STEP)

2. Set up devise; it will give you extra directions for you to do.

3. Rails scaffold up posts and comments. Set up kaminari; change posts_controller.rb appropriately (give it permissions) so that everything works properly (Rails 5.1 thing?).

4. Work on front end a little bit, deploy it to heroku. Move sqlite3 gem in Gemfile and add production gem "pg" to fix the heroku problem.

5. When publishing for heroku, you must consider the following commands:
```bash
  bundle install --without production
  git add .
  git commit -m "Changed Gemfile for Heroku"
  git push heroku master
```

6. Other useful things are:
```bash
heroku run rails db:migrate
heroku open
```

7. I recognized that sqlite3 is not very useful, so I switched db from sqlite3 to postgresql. This took quite a while and is too long to write out.

8. Set up on AWS free version one. This is the command to connect to the server with ssh
```bash
  ssh -i "learningrails.pem" ubuntu@ec2-52-15-183-213.us-east-2.compute.amazonaws.com
```

9. Decided to go with heroku; some problems and solutions:
- yarn problem: get rid of package.json in root folder because that makes heroku think we have both Node.js and RoR.
Then set up heroku:
```bash
heroku login
heroku keys:add
heroku create
git push heroku master
heroku addons:create heroku-postgresql:hobby-dev # creates postgresql db
heroku run rails db:migrate # manually migrates the data (finishes setting up database)
```

10. Add fonts folder in assets/ and make sure it is being processed by adding an extra line in application.rb
