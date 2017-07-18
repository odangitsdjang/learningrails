# Basically a step by step of what I did.

1. Create rails directory, add it to GitHub, etc.

2. Set up devise; it will give you extra directions for you to do.

3. Rails scaffold up posts and comments. Set up kaminari; change posts_controller.rb appropriately (give it permissions) so that everything works properly (Rails 5.1 thing?).

4. Work on front end a little bit, deploy it to heroku. Move sqlite3 gem in Gemfile and add production gem "pg" to fix the heroku problem.

5. When publishing for heroku, you must do the following first:
```bash
  bundle install --without production
  git add .
  git commit -m "Changed Gemfile for Heroku"
  git push heroku master
```

6. Another useful things are

```bash
heroku run rails db:migrate
heroku open
```
