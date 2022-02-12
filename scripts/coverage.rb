#!/usr/bin/env ruby

require 'slather'

def total_coverage (project)
   unless @project.nil?
   #	puts( @project.coverage_files)
    @total_coverage ||= begin
      total_project_lines = 0
      total_project_lines_tested = 0
      @project.coverage_files.each do |coverage_file|
        total_project_lines_tested += coverage_file.num_lines_tested
        total_project_lines += coverage_file.num_lines_testable
      end
      @total_coverage = (total_project_lines_tested / total_project_lines.to_f) * 100.0
    end
   end
end

#@project = Slather::Project.open('./TestMe.xcodeproj')
# @project.source_directory = './output'
# @project.output_directory = './output'
# @project.scheme = 'TestMe'
# @project.coverage_service = :terminal  
# @project.configure
#coverage = total_coverage(@project)
puts('low coverage')
	exit
if coverage < 90 
	puts('low coverage')
	exit
end