class ProjectCard < Bridgetown::Component
  def initialize(project)
    @project = project
  end

  def render?
    @project.data.hidden != true
  end
end
