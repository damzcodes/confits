set -e

cd test_app
export BUNDLE_GEMFILE=$PWD/Gemfile
echo "gem 'confits', path: '../'" >> Gemfile
bundle
bundle show spring && bundle exec spring stop
bundle exec rails g confits:install
bundle exec rake db:migrate
bundle exec rspec