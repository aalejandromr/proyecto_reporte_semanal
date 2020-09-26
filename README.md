# Proyecto Reporte Semanal

Proyecto reporte semanal is a reporting tool for small teams to gather information about weekly gatherings and their outcome.

# How it works

Each group submits their outcomes to the group lead in order to process each and every report each week for the organization to act upon the results.
each group's lead downloads the report in .xml format and submits then to the organization monthly.

# Instalation process

You will need the following installed:
- Ruby > 2.6.5

1. Clone this repo
2. cd into the folder created
3. run `bundle install`
4. run migrations with `rake db:migrate`
5. run seeds with `rake db:seed`
6. run the puma server with `rails s`
