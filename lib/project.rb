
class Project

    attr_reader :title

    def initialize (title)
        @title = title
    end

    #Class Methods


    #Instance methods

    def add_backer(backer)
        ProjectBacker.new( self, backer )
    end

    def backers
        pbs = ProjectBacker.all.select {|pb| pb.project == self }
        pbs.map { |pb| pb.backer }
    end



end
