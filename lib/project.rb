class Project

    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        proj_backers = ProjectBacker.all.select{|proj_back| proj_back.project == self}
        backers = proj_backers.collect {|back| back.backer}
        backers
    end
end