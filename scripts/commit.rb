#!/usr/bin/env ruby
require 'optparse'

push = false
branch = nil

options = {}
OptionParser.new do |parser|
  parser.on("-p", "",
            "Not required") do |lib|
    push = true
  end
end.parse!


## Run actions
# puts('Lint code')
# system('swiftlint')

# puts('Run Tests')
# system('bundle exec fastlane tests')

# puts('Determine Coverage')
# system('ruby scripts/coverage.rb')

# ## Clean up output
# system('rm -R output/*')


## commit branch
if push 
	puts(system('git push origin head'))

end