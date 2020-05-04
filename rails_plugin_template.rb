# ==========================
# Gem settings

# --------------------------
# Debug & Test gems
gem_group :test, :development do
  gem "pry-rails"
  gem "pry-byebug"
  gem "rspec-rails"
end


# ==========================
# Test settings

run "rm -rf test"

run "bundle install -j4"

generate "rspec:install"

run "cat << TEXT > #{project_root}/.rspec
--color
--require spec_helper
--format documentation
TEXT"
