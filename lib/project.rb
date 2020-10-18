class Project
    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def holder
        ProjectBacker.all.select {|instance| instance.project == self}
    end
    
    def backers
        holder.map {|instance| instance.backer}
    end
end
