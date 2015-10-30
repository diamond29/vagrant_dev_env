require 'berkshelf'

use_docker = false

task :default do
  Berkshelf::Berksfile.from_file(
    File.join(Dir.pwd, 'Berksfile')
  ).vendor('cookbooks')

  cmd = 'vagrant up'
  if use_docker
    cmd = "#{cmd} USE_DOCKER=true"
  end
  `#{cmd}`
end

task :docker do
  use_docker = true

  Rake::Task['default'].invoke
end
