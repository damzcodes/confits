set -e

cd test_app
export BUNDLE_GEMFILE=$PWD/Gemfile
bundle exec rails g confits:example
bundle exec rspec spec/features/person_spec.rb