require 'pry'

class Project

    attr_reader :title

    @@all = []

    def initialize(project_title) # takes a title on initialization, accessible through an attribute reader
        @title = project_title
        @@all << self
    end


    def add_backer(backer) # is an instance method that accepts a backer as an argument and creates a ProjectBacker, associating the backer with this project
        ProjectBacker.new(self, backer)
    end

    def backers # returns an array of backers associated with this Project instance
        projects = []
        ProjectBacker.all.find_all do |project|
            if project.project == self
                projects << project.backer
            end
        end
        projects
    end

end