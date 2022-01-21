require_relative 'task'
require_relative 'repository'
require_relative 'controller'
require_relative 'view'
require_relative 'router'

repo = Repository.new
view = View.new
controller = Controller.new(repo, view)

router = Router.new(controller)

router.run

# controller.create
# controller.create

# controller.mark_task_as_done

# controller.display_tasks
