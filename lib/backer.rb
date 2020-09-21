class Backer
  
  attr_reader :backed_projects, :name
  
  def initialize(name)
    @name = name
    @backed_projects = []
  end
  
  def back_project(title)
    @backed_projects << title
    # utilize the passed in title from other class to call on its backers method to then shovel the current instance (self) into it
    title.backers << self
  end
  
end