class Repository       # Database
    def initialize
        @tasks = []
    end

    def add_task(task)
        @tasks << task
    end

    def all
        @tasks
    end

    def find(index)
        return @tasks[index]
    end
end