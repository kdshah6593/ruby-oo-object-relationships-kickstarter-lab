class Backer

    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        backer_projs = ProjectBacker.all.select {|proj_back| proj_back.backer == self}
        projects = backer_projs.collect {|proj| proj.project}
        projects
    end
end