require_relative 'task'

class Controller
    def initialize(repository, view)
        @repository = repository
        @view = view
    end

    def create
        # 1. get user input
        description = @view.ask_user_for_description

        # 2. create a task
        task = Task.new(description)

        # 3. send task to repo
        @repository.add_task(task)
    end

    def display_tasks
        tasks = @repository.all
        @view.list_tasks(tasks)
    end

    def mark_task_as_done
        # 1. List tasks (with index)
        display_tasks
        # 2. Ask user for chosen task / Get user input (index - 1)
        index = @view.ask_user_for_index
        # 3. Find the task in the repo
        task = @repository.find(index)
        # 4. Mark it as done
        task.mark_as_done!

        display_tasks
    end
end