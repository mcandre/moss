task :default => 'test'

task :gem => 'moss.gemspec' do
  sh 'gem build *.gemspec'
end

task :install => [:gem] do
  sh 'gem install ./*.gem'
end

task :test => [:clean, :install] do
  sh 'moss examples/license-old.md examples/license-new.md'
end

task :publish => [:clean, :gem] do
  sh 'gem push ./*.gem'
end

task :clean => [] do
  begin
    sh 'rm *.gem'
  rescue
  end
end
