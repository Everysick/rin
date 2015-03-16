# rails new app_name -m ./rails-template.rb

# methods
def install?(name, type)
  case type
  when 'gem' then
    if yes?("Would you like to install #{name}?")
      gem name
    end
  else
    puts "No match #{name}."
  end
end


# Before process
remove_file 'public/index.html'


# gems
# if you add gem, you should call for 'intall?' method.

#default ruby, rails versions
gem 'rails', '4.2.0'
gem 'ruby', '2.2.0'
 
# OR Mapper
gem 'pg'
gem 'activerecord'

# ruby to js
install? 'gon', 'gem'

# redis is DB
install? 'redis', 'gem'
install? 'redis-rails', 'gem'

# API router
install? 'grape', 'gem'

# account authentication
install? 'devise', 'gem'

# account authorization
install? 'cancancan', 'gem'

# charts
install? 'lazy_high_charts', 'gem'

# omniauths
install? 'omniauth', 'gem'
install? 'omniauth-twitter', 'gem'
insatll? 'omniauth-facebook', 'gem'
install? 'omniauth-github', 'gem'
install? 'omniauth-identity', 'gem'

# settings
install? 'rails_config', 'gem'

# pagenator
install? 'kaminari', 'gem'
install? 'active_admin', 'gem'
install? 'rails_admin', 'gem'

# gem groups
gem_group :production do

end

gem_group :test, :development do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  install? 'byebug', 'gem'

  # to debug
  install? 'pry-rails', 'gem'
  install? 'pry-byebug', 'gem'
  install? 'pry-doc', 'gem'
  install? 'better_errors', 'gem'
  install? 'quiet_assets', 'gem'
  
  # to test
  install? 'spring', 'gem'
  install? 'rspec-rails', 'gem'
  install? 'factory_girl_rails', 'gem'
  install? 'guard', 'gem'
  install? 'guard-rspec', 'gem'
  install? 'spring-commands-rspec', 'gem'
  install? 'database_cleaner', 'gem'
end


# run "bundle install"
run_bundle


# After bundle install
after_bundle do
  # git 
  git :init
  git add: "."
  git commit: %Q{ -m 'Initial commit' }
end
