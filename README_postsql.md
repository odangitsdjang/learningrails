# Some useful postgresql commands that I've learned
1. To start a session (NOTE: postgres is a user with hella privileges)
```bash
  psql postgres
```
2. Besides commands like below, when running SQL commands inside psql, make sure to end with semicolon.   
```bash
  \du # to list users
  \l # to list all databases
  \dt # to list all tables in the current database
  DROP ROLE f3 # drop role f3
  \q   # to quit
```
3. In terminal this creates a user f3 with super privileges
```bash
  createuser f3 -d -s
```
