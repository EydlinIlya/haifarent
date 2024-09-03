# haifarent
This is an demo for the app FaceShtime. The app collects data about apartments for rent in Haifa from several facebook public groups (https://www.facebook.com/groups/570905303053795, https://www.facebook.com/groups/1896414753945570, https://www.facebook.com/groups/837431273097770), transforms information into structural format using Gemini API, and geocodes apartments using Google Maps API.
## Requirements
1) Facebook account in Russian language.
2) Notifications for the Rent groups are on and directed to the mailbox
3) Mailbox allows imap connection with username and password
4) Mailbox has two dedicated folders: one for new facebook notifications (you should) create a rule to move all relevant notifications into that folder and another emoty folder
5) API key (free tier) for the Google Gemini. (https://cloud.google.com/gemini/docs/quickstart)
6) API key for the Google Maps (https://developers.google.com/maps/documentation/geocoding/start, google gives 200usd credit each month)
7) (optional) If you want to deploy ui on https://www.shinyapps.io - free tier account
## Installation 
Instalation was tested from Rstudio IDE. It expected but not guarantied to work with other IDEs or command line
1) pull the repo
2) run install_depenndencies.R
3) run set_enviroment. The empty .Renviron file will be created
4) Set the values for the enviromental variables in the .Renviron

MAIL_SERVER=<imaps://imap-mail.example.com>\
MAIL_USERNAME=<example@example.com>\
MAIL_PASSWORD=<example123>\
MAIL_FOLDER=<example_folder>\
MAIL_FOLDER_LOG=<example_folder_log>\
GEMINI_KEY=<gemini_key>\
GOOGLEGEOCODE_API_KEY=<google_maps_key>\
POSIT_NAME=<shinyapps.io username>\
POSIT_TOKEN=<shinyapps.io token>\
POSIT_SECRET=<shinyapps.io secret>


### Usage
1) Run parser.Rmd to save new property into geo.csv file
2) Run feceshtime.Rmd to run UI locally or deloy.R to deploy it into shinyapps.io
