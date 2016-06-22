helpers do
  def session_tasks
    tasks = session[:tasks]
    unless tasks
      tasks = TaskList.new
      session[:tasks] = tasks
    end
    tasks
  end
end
