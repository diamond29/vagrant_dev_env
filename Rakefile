require 'berkshelf'

task :default do
  Berkshelf::Berksfile.from_file(
    File.join(Dir.pwd, 'Berksfile')
  ).vendor('cookbooks')
end
