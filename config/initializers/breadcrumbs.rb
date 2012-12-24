Gretel::Crumbs.layout do
  
  # Remember to restart your application after editing this file.
  
  # Example crumbs:
  
  crumb :root do
    link I18n.t('homes.index'), root_path
  end

  crumb :about do
    link I18n.t('abouts.index'), abouts_path
  end

  crumb :about_history do |about|
    link I18n.t('about.history'), history_abouts_path
    parent :about, about
  end

  crumb :about_awards do |about|
    link I18n.t('about.awards'), awards_abouts_path
    parent :about, about
  end

  crumb :about_global do |about|
    link I18n.t('about.global'), global_proyection_abouts_path
    parent :about, about
  end

  crumb :about_staff do |about|
    link I18n.t('about.staff'), know_our_staff_abouts_path
    parent :about, about 
  end

  crumb :about_work do |about|
    link I18n.t('about.work'), work_with_us_abouts_path
    parent :about, about 
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
