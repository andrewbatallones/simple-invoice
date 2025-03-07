# Simple Invoice

Want a better way to keep track of invoices instead of a list of word docs? I gotcha! This app will keep track of invoices you want to send to various clients.

## Development

This is a simple application that needs Postgres to run.

You can run the various commands to create/migrate the tables to the database.

```bash
rails db:create
rails db:migrate
```

From there, you can run the app via a web server:

```bash
rails s
```

If you need to run any console commands or debug anything, you can also run this command to log into the console:

```bash
rails c
```