class ProjectCard < Bridgetown::Component
  attr_reader :project

  def initialize(project)
    @project = project
  end

  def render?
    @project.data.hidden != true
  end
end
