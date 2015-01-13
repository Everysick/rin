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


# gem groups
gem_group :production do

end

gem_group :development do
  
end

gem_group :test do
  
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
