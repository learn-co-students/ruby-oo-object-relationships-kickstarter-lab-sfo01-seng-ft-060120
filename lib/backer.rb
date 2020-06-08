require 'pry'

class Backer
    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        backed_projects = ProjectBacker.all.select { |project| project.backer == self}
        backed_projects.collect { |project| project.project }
    end
end