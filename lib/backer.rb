
class Backer

    attr_reader :name

    def initialize (name)
        @name = name
    end

    #Class Methods

    #Instance Methods

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        pbs = ProjectBacker.all.select { |pb| pb.backer == self }
        pbs.map { |pb| pb.project }
    end


end
