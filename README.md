# Auroris
### An AS2 Club Penguin Server Emulator used in Club Penguin Rewritten.

Open Sourced by [ncodeyx](https://github.com/ncodeyx/Auroris), written by Hagrid.

### Setup
1. [Download](https://github.com/HashSploit/Auroris/archive/master.zip) or clone the project.
2. Copy `mysql.json.example` to `mysql.json` inside of `configurations/` and configure it to your database setup.
3. Copy `worlds.json.example` to `worlds.json` inside of `configurations/` and configure it however you like.
4. Import (setup) the database schema by doing `mysql -u dbuser -p dbname < database.sql`.
5. Edit the `run.sh` to match your needs. Change `PRODUCTION=1` to run the server in production mode.
6. Make `run.sh` executable `chmod +x run.sh` and run it!

### To Do
- :warning: Rebuild the Database Schema :warning:
- Improve logger
- Abstraction
- Add more moderation features
