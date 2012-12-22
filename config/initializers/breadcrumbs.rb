Gretel::Crumbs.layout do
  
  # Remember to restart your application after editing this file.
  
  # Example crumbs:
  
  crumb :root do
    link I18n.t('homes.index'), root_path
  end

  crumb :nosotros do
    link I18n.t('abouts.index'), abouts_path
  end
  
  # crumb :project do |project|
  #   link lambda { |project| "#{project.name} (#{project.id.to_s})" }, project_path(project)
  #   parent :projects
  # end
  
  # crumb :project_issues do |project|
  #   link "Issues", project_issues_path(project)
  #   parent :project, project
  # end
  
  # crumb :issue do |issue|
  #   link issue.name, issue_path(issue)
  #   parent :project_issues, issue.project
  # end

end
