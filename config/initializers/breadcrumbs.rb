Gretel::Crumbs.layout do
  
  crumb :root do
    link I18n.t('homes.index'), root_path
  end

  # users
  crumb :user do
    link I18n.t('user.root'), new_user_session_path
  end

  crumb :user_sign_in do |user|
    link I18n.t('user.sign_in'), new_user_session_path
    parent :user, user
  end

  crumb :user_sign_up do |user|
    link I18n.t('user.sign_up'), new_user_registration_path
    parent :user, user
  end

  # abouts
  crumb :about do
    link I18n.t('abouts.index'), abouts_path
  end

  crumb :about_history do |about|
    link I18n.t('about.history'), history_abouts_path
    parent :about, about
  end

  crumb :about_awards do |about|
    link I18n.t('about.milestones'), milestones_abouts_path
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

  crumb :about_work_new do |about|
    link I18n.t('applicant.breadcrumb'), new_applicant_path
    parent :about_work, about 
  end

  # destinations
  crumb :destinations do
    link I18n.t('destinations.index'), destinations_path
  end

  crumb :destination do |destination|
    link "#{destination.name}", destination_path(destination)
    parent :destinations
  end

 # crumb :destination_countries do |countries|
 #   link 'paises', 'peru.com'
 #   parent :destination
 # end
 
  # countries belongs_to :destination
  crumb :destination_country do |country|
    link "#{country.name}", destination_country_path(country.destination, country)
    parent :destination, country.destination
  end

  # offers
  crumb :offers do
    link I18n.t('offers.index'), offers_path
  end

  # offer_season
  crumb :offer_season do |season|
    link "#{season.title}", offer_season_path(season)
    parent :offers
  end

  # offers / offer_season / offer
  crumb :offer do |offer|
    link "#{offer.title}", offer_season_offer_path(offer.offer_season, offer)
    parent :offer_season, offer.offer_season
  end

  # packs
  crumb :pack do
    link I18n.t('packs.index'), packs_path
  end

  # posts
  crumb :posts do
    link I18n.t('posts.index'), posts_path
  end

  crumb :posts_news_and_events do |post|
    link I18n.t('posts.title'), 'news_and_events_posts_path'
    parent :posts, post
  end

  crumb :posts_press_releases do |post|
    link I18n.t('press_releases.index'), 'press_releases_posts_path'
    parent :posts, post
  end

  crumb :posts_news_and_events_post do |post|
    link post.title, 'news'
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
