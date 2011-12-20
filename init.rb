require 'redmine'

Redmine::Plugin.register :redmine_landing_page do
  name 'Redmine Landing Page plugin'
  author 'Igor Zubkov'
  description 'Redmine Landing Page plugin'
  version '0.0.1'
  url 'https://github.com/biow0lf/redmine_landing_page'
  author_url 'https://github.com/biow0lf'
end

require 'redmine_landing_page/hooks/view_projects_form_hook'
