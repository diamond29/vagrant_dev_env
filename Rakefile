require 'berkshelf'

task :default do
  Berkshelf::Berksfile.from_file(
    File.join(Dir.pwd, 'Berksfile')
  ).vendor('cookbooks')
end

language: ruby
rvm:
- 2.2.2
script:
- bundle exec rake db:create
- bundle exec rake db:migrate
- bundle exec rake test
notifications:
  email:
    recipients:
    - gregdiamond29@gmail.com
    on_success: change
    on_failure: always
