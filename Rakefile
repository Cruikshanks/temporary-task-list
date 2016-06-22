desc 'Runs the start task as default'
task default: %w(start)

desc 'Start the temporary task list app'
task :start do
  if Gem::Specification.find_all_by_name('rerun').any?
    sh %( rerun app.rb )
  else
    sh %( bundle exec ruby app.rb )
  end
end
