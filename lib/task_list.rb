# Represents our task list
class TaskList
  def initialize(tasks = [])
    @tasks = tasks
  end

  def add(task)
    @tasks.push(task)
  end

  def get(index)
    @tasks[index]
  end

  def delete(index)
    @tasks.delete_at(index)
  end

  def list
    @tasks
  end
end
