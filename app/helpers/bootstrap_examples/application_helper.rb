module BootstrapExamples::ApplicationHelper

  def bvh_app_home_link
    root_path
  rescue NameError
    '/'
  end
  
  def bvh_show_source(path)
    erb = IO.read(bvh_view_dir.join("#{path}.html.erb"))
    content_tag(:pre, erb)
  end
  
  private
  
  def bvh_view_dir
    BootstrapViewHelpers::Engine.root.join('app/views')
  end
  
end
  