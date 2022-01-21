class Router
    def initialize(controller)
        @controller = controller
    end

    def run
        loop do
            print_actions
            choice = gets.chomp.to_i
            dispatch(choice)
        end
    end

    def print_actions
        puts ''
        puts '1 - Display tasks'
        puts '2 - Create task'
        puts '3 - Mark task as done'
        puts ''
    end

    def dispatch(choice)
        case choice
        when 1 then @controller.display_tasks
        when 2 then @controller.create
        when 3 then @controller.mark_task_as_done
        else
            puts 'Wrong input'
        end
    end
end