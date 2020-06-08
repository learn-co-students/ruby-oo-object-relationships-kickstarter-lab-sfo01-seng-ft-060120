class Backer

    attr_reader :name # takes a name on initialization, accessible through an attribute reader

    @@all = []

    def initialize(backer_name)
        @name = backer_name
        @@all << self
    end

    def back_project(project) # is an instance method that accepts a project as an argument and creates a ProjectBacker, associating the project with this backer
        ProjectBacker.new(project, self)
    end


    def backed_projects # returns an array of projects associated with this Backer instance
        projects = []
        ProjectBacker.all.find_all do |project|
            if project.backer == self
                projects << project.project
            end
        end
        projects
    end

end