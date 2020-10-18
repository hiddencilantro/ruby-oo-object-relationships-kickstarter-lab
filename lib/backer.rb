class Backer
    attr_reader :name

    def initialize(name)
        @name = name
    end
    
    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def holder
        ProjectBacker.all.select {|instance| instance.backer == self}
    end

    def backed_projects
        holder.map {|instance| instance.project}
    end
end
