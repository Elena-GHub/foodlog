# README

Space to track my progress over the [Ruby on Rails crash course 2020](https://www.youtube.com/watch?v=B3Fbujmgo60) by Andy ([this is his YouTube channel](https://www.youtube.com/user/webcrunchblog)) 

* Ruby version: 3.0.0

* Rails version: 6.1.1

* OS specifics: Ubuntu 20.04. Please see notes below.

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

## Notes and other useful info  
  
### Ubuntu 20.04 (kde desktop)  
  * About the **cuttlery svg icon** in the header: I am running Linux, and the Nucleo app Andy mentions at minute 59:20 is only available for Windows and Mac. I supposed Bulma would support **Font Awesome** icons and it turns out it does. So I used one of these icons instead in the header, which also entailed adding this line `<script src='https://kit.fontawesome.com/a076d05399.js'></script>` within the head section in `application.html.erb`.  
  * **testing**   I had to add the `rexml` gem (via terminal with `bundle add rexml` and `bundle install`) to solve an error of "cannot load such file -- rexml/document (LoadError)". Please see [this thread](https://github.com/Shopify/bootsnap/issues/325) for further details. With this I could finally run the tests.  
### General notes     
As a beginner with Ruby on Rails, I have also found useful the following links for further details.  
  
  * [Model generator description](https://github.com/rails/rails/blob/main/railties/lib/rails/generators/rails/model/USAGE)  

