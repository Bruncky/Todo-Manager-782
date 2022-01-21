class View
    def initialize; end

    def ask_user_for_description
        puts 'What is your task?'
        print '> '

        return gets.chomp
    end

    def list_tasks(tasks)
        tasks.each_with_index do |task, index|
            x = task.done? ? 'X' : ' '

            puts "#{index + 1} [#{x}] #{task.description}"
        end
    end

    def ask_user_for_index
        puts 'Which task?'
        print '> '

        return gets.chomp.to_i - 1
    end
end