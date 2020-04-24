
class ProjectBacker


    attr_reader :project, :backer

    @@all = []

    def initialize( project, backer )
        @project, @backer = project, backer
        @@all << self

    end

    #Class Methods

    def self.all
        @@all
    end


    #Instance Methods


end
