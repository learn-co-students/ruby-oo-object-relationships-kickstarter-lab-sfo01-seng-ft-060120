class ProjectBacker

    attr_reader :project, :backer

    @@all = [] # is a class variable set to an empty array

    def initialize(project, backer) # takes in a project and a backer on initialization, accessible through an attribute reader 
        @project = project
        @backer = backer
        @@all << self # stores the new instance of ProjectBacker in the @@all class variable
    end

    def self.all # is a class method that returns the @@all class variable
        @@all 
    end

end