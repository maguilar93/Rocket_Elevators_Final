# ROCKET ELEVATORS INFORMATION SYSTEM

Ruby On Rails project for RocketElevators.  
Make the interactive website with the original static website of "Jackie" and link it to a database to store "User" and "Employee" login data and the quote data in separate tables.  
The website have a backoffice that employee can login to access the data from quote.

###### New Update Week 7 | Odyssey :   March 27th 2020 ######
  Added 7 API's like ZenDesk, Twilio, IBM-Watson text-to-speech, SendGrid, DropBox, Google-Maps and Slack.
  
  The following are instructions how to test out the features of each API.
  When asked to provide Email and password to access the admin dashboard use one of the following combinations.
  
  # Website URL : http://projectrocketelevators.com/
  # Access to admin panel :http://projectrocketelevators.com/admin
  
## Back Office Admin Logins
  - admin@example.com , password
  - test@test , 123123

- Mathieu Houde | coach | mathieu.houde@codeboxx.biz | password: 123456
- Patrick Thibault | coach | tiboclan@gmail.com | password: 123456
- Philippe Motillon | coach | philippe.motillon@keyrus.ca | password: 123456
- Khalid Kjado | coach | kdjado@gmail.com | password: 123456
- Antoine Deblonde | coach | antoine.deblonde@keyrus.ca | password: 123456
- Ibrahim Mahamane | coach | imahamaneissa@gmail.com | password: 123456

# ZenDesk
  In order to receive a message from Zendesk, you will have to send a Contact Us request request via our Homepage. It is also possible     if you fill up a quote request via our Get a Quote page. These messages will be sent to the Sales Representative, in this case,         Patrick Thibault.
  
# Twilio
  In order to receive a message from Twilio, you will have to update the status of the elevator. In order to do this, you need to access   Addresses > Customers > Buildings > Elevators. you can do that through the admin link: http://projectrocketelevators.com/admin .
  You can then edit the elevator’s status to “Intervention”. This will send a message to Patrick Thibault’s mobile.
  
# IBM-Watson :
  The IBM Watson works by gathering the text data, then sending it to the IBM Watson service, and it receives an audio file back which     it plays automatically right after.

  To create a new summary the employee has to press the “Summary button “ in the back office, under the tab dashboard. Once the button     is pressed the file will play itself right after. To listen to the summary again you can press the play button.

  Everytime a change is made it is suggested to press the summary button to get a new briefing regarding the questions needed answering.
  
# DropBox
# Google-Maps
  Once in the admin panel, please press the "Geoloclisation all customers" tab at the top. This will take you to a page where you can     see all the customers on a single map. When you press on a dropped pin on the map you will be able to see the details of those           buildings.
  
# Slack
  to change the status of a specific elevator, go to the Adresses tab select the adress you wanna view, then if the owner of the adress   is a registered customer, you will be able to acess the customer tab, inside customers you can select the view option on the customer   desired then inside this customer's tab you can select the "buildings" option.
  
  Inside the Buildings tab you can select the "View" option on the desired building inside the desired building tab, you can then select   the "Batteries" option on the far right. Inside the Batteries Tab, you can then select the "view" option on the desired Battery,         Inside the Battery infos, you can See on the far right that there is now an "column" option, press it, Inside the Column tab you can     select the "view" option on the desired column. Inside the desired column's info tab you can now see an Elevator Option on the far       right, Press it. Inside the Elevators tab you can then press "Edit" on the Desired Elevator this will bring you to a form with           multiple infos about the Elevator, what we're looking for is the "Status" Status is the 4th input field,
  there are 2 status "Intervention" and "Active", if you change the status of one of the elevators manually, our elevator Operator will   receive a text message containing the Details of the elevator in question. Our "Slack" bot will also alert in the                       "elevator_operations" channel that the elevator in question and all its details, has changed the state of the elevator.
  
# SendGrid
  In order to receive a message from SendGrid, you will have to send a Contact Us request request via our Homepage. Please make sure       that your email is valid, since you should receive a thank you email right after you click submit.

## Configuration
  - Ruby version : 2.6.5  
  - Rails version : 5.2.4.1
  - Gem version : 3.1.2
  - Bundler version : 1.17.3

## Link to the video


## Collaborators
  - Maria - Collaborator -maguilar93

  - Kiril - Collaborator -kirilkk9

  - Reda - Team Leader -RdaBouazzaoui

  - Afandy - Collaborator -afandyng
  
  - Alexis - Collaborator -Ticass


## List of required Gems
actioncable (6.0.2.1, 5.2.4.1)  
actionmailbox (6.0.2.1)  
actionmailer (6.0.2.1, 5.2.4.1)  
actionpack (6.0.2.1, 5.2.4.1)  
actiontext (6.0.2.1)  
actionview (6.0.2.1, 5.2.4.1)  
activeadmin (2.6.1)  
activejob (6.0.2.1, 5.2.4.1)  
activemodel (6.0.2.1, 5.2.4.1)  
activerecord (6.0.2.1, 5.2.4.1)  
activestorage (6.0.2.1, 5.2.4.1)  
activesupport (6.0.2.1, 5.2.4.1)  
addressable (2.7.0)  
airbrussh (1.4.0)  
arbre (1.2.1)  
archive-zip (0.12.0)  
arel (9.0.0)  
autoprefixer-rails (9.7.4)  
bcrypt (3.1.13)  
bigdecimal (default: 1.4.1)  
bindex (0.8.1)  
bootsnap (1.4.6)  
bootstrap (4.4.1)  
builder (3.2.4)  
bundler (2.1.4, default: 2.1.2, 1.17.3)  
bundler-unload (1.0.2)  
byebug (11.1.1)  
capistrano (3.12.0)  
capistrano-bundler (1.6.0)  
capistrano-rails (1.4.0)  
capistrano3-puma (3.1.1)  
capybara (3.31.0)  
childprocess (3.0.0)  
chromedriver-helper (2.1.1)  
chronic (0.10.2)  
cmath (default: 1.0.0)  
coffee-rails (4.2.2)  
coffee-script (2.4.1)  
coffee-script-source (1.12.2)  
concurrent-ruby (1.1.6)  
crass (1.0.6)  
csv (default: 3.0.9)  
date (3.0.0, default: 2.0.0)  
dbm (default: 1.0.0)  
devise (4.7.1)  
did_you_mean (1.3.0)  
e2mmap (default: 0.1.0)  
erubi (1.9.0)  
etc (default: 1.0.1)  
execjs (2.7.0)  
executable-hooks (1.6.0)  
faker (2.10.2)  
fcntl (default: 1.0.0)  
ffi (1.12.2)  
fiddle (default: 1.0.0)  
fileutils (default: 1.1.0)  
font-awesome-rails (4.7.0.5)  
font-awesome-sass (5.12.0)  
formtastic (3.1.5)  
formtastic_i18n (0.6.0)  
forwardable (default: 1.2.0)  
gem-wrappers (1.4.0)  
globalid (0.4.2)  
haml (5.1.2)  
has_scope (0.7.2)  
hirb (0.7.3)  
i18n (1.8.2)  
inherited_resources (1.11.0)  
io-console (default: 0.4.7)  
io-like (0.3.1)  
ipaddr (default: 1.2.2)  
irb (default: 1.0.0)  
jbuilder (2.10.0)  
jquery-rails (4.3.5)  
json (default: 2.1.0)  
kaminari (1.2.0)  
kaminari-actionview (1.2.0)  
kaminari-activerecord (1.2.0)  
kaminari-core (1.2.0)  
listen (3.1.5)  
logger (default: 1.3.0)  
loofah (2.4.0)  
mail (2.7.1)  
marcel (0.3.3)  
matrix (default: 0.1.0)  
method_source (0.9.2)  
mimemagic (0.3.4)  
mini_mime (1.0.2)  
mini_portile2 (2.4.0)  
minitest (5.14.0, 5.11.3)  
mixitup-rails (3.3.1)  
msgpack (1.3.3)  
mutex_m (default: 0.1.0)  
mysql2 (0.5.3)  
net-scp (2.0.0)  
net-ssh (5.2.0)  
net-telnet (0.2.0)  
nio4r (2.5.2)  
nokogiri (1.10.9)  
openssl (default: 2.1.2)  
orm_adapter (0.5.0)  
ostruct (default: 0.1.0)  
owlcarousel-rails (1.1.3.3)  
pg (1.2.2, 0.18.4)  
polyamorous (2.3.2)  
popper_js (1.16.0)  
power_assert (1.1.3)  
prime (default: 0.1.0)  
psych (default: 3.1.0)  
public_suffix (4.0.3)  
puma (4.3.3, 3.12.4)  
rack (2.2.2)  
rack-proxy (0.6.5)  
rack-test (1.1.0)  
rails (6.0.2.1, 5.2.4.1)  
rails-assets-datatables (1.10.19)  
rails-assets-jquery (3.4.1)  
rails-dom-testing (2.0.3)  
rails-html-sanitizer (1.3.0)  
railties (6.0.2.1, 5.2.4.1)  
rake (13.0.1, 12.3.2)  
ransack (2.3.2)  
rb-fsevent (0.10.3)  
rb-inotify (0.10.1)  
rdoc (default: 6.1.2)  
regexp_parser (1.7.0)  
responders (3.0.0)  
rexml (default: 3.1.9)  
rss (default: 0.2.7)  
ruby_dep (1.5.0)  
rubygems-bundler (1.4.5)  
rubygems-update (3.1.2)  
rubyzip (2.2.0)  
rvm (1.11.3.9)  
rvm1-capistrano3 (1.4.0)  
sass (3.7.4)  
sass-listen (4.0.0)  
sass-rails (6.0.0, 5.1.0)  
sassc (2.2.1)  
sassc-rails (2.1.2)  
scanf (default: 1.0.0)  
sdbm (default: 1.0.0)  
selenium-webdriver (3.142.7)  
shell (default: 0.7)  
spring (2.1.0)  
spring-watcher-listen (2.0.1)  
sprockets (4.0.0, 3.7.2)  
sprockets-rails (3.2.1)  
sshkit (1.21.0)  
stringio (default: 0.0.2)  
strscan (default: 1.0.0)  
sync (default: 0.5.0)  
temple (0.8.2)  
test-unit (3.2.9)  
thor (1.0.1)  
thread_safe (0.3.6)  
thwait (default: 0.1.0)  
tilt (2.0.10)  
tracer (default: 0.1.0)  
turbolinks (5.2.1)  
turbolinks-source (5.2.0)  
tzinfo (1.2.6)  
uglifier (4.2.0)  
warden (1.2.8)  
web-console (4.0.1, 3.7.0)  
webdrivers (4.2.0)  
webpacker (4.2.2)  
webrick (default: 1.4.2)  
websocket-driver (0.7.1)  
websocket-extensions (0.1.4)  
whenever (1.0.0)  
xmlrpc (0.3.0)  
xpath (3.2.0)  
zeitwerk (2.3.0)  
zlib (default: 1.0.0)  
  
  # DEPENDENCIES
  activeadmin
  bootsnap (>= 1.1.0)
  bootstrap (~> 4.4.1)
  byebug
  capistrano (~> 3.10)
  capistrano-bundler (>= 1.1.0)
  capistrano-rails (~> 1.4)
  capistrano-rake
  capistrano3-puma
  capybara (>= 2.15)
  chartkick
  chromedriver-helper
  coffee-rails (~> 4.2)
  date
  devise
  faker
  faraday
  faraday_middleware
  figaro
  font-awesome-rails
  font-awesome-sass (~> 5.12.0)
  gmaps4rails
  ibm_watson
  jbuilder (~> 2.5)
  jquery-rails
  listen (>= 3.0.5, < 3.2)
  mixitup-rails
  mysql2 (>= 0.4.4, < 0.6.0)
  owlcarousel-rails (~> 1.1, >= 1.1.3.3)
  pg (>= 0.18, < 2.0)
  phonelib
  puma (~> 3.11)
  rails (~> 5.2.4, >= 5.2.4.1)
  rails-assets-datatables!
  rails-assets-jquery!
  rvm1-capistrano3
  sass-rails (~> 5.0)
  selenium-webdriver
  slack-notifier
  slack-ruby-client
  spring
  spring-watcher-listen (~> 2.0.0)
  turbolinks (~> 5)
  twilio-ruby
  tzinfo-data
  uglifier (>= 1.3.0)
  web-console (>= 3.3.0)
  whenever
  zendesk_api!
  
