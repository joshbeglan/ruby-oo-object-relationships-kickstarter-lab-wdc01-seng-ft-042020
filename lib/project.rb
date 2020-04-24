
class Project

    attr_reader :title

    def initialize (title)
        @title = title
    end

    #Class Methods


    #Instance methods
    
    #create
    def add_backer(backer)
        ProjectBacker.new( self, backer )
    end
    
    #read
    def backers
        pbs = ProjectBacker.all.select {|pb| pb.project == self }
        pbs.map { |pb| pb.backer }
    end

    #delete
    def remove_backer(backer)
        pbs_to_delete = ProjectBacker.all.find {|pb| pb.project == self && pb.backer == backer}
        ProjectBacker.all.delete(pbs_to_delete)
    end

    #update
    def update_backer
        pbs_to_delete = ProjectBacker.all.find {|pb| pb.project == self && pb.backer == backer}
    end

end
