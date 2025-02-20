# The goal of this project is to create a better starting point for new Rails 8 apps.
# Alot of time in my tutorials is wasted by building out stuff like simple user accounts with usernames, avatars and navbar with user dropdown.
# That should be a default for new rails apps with our quickstart template for Rails 8 and Tailwind
# Built by Indigo Tech Tutorials

gem "devise"
gem "tailwindcss-rails"

rails_command("tailwindcss:install")
generate(:devise, "user")
rails_command("db:migrate")
generate(:controller, "pages home")
route "root to: 'pages#home'"

after_bundle do
  git :init
  git add: "."
  git commit: %Q{ -m 'Initial commit' }
end

puts "Thanks for using my template :)"