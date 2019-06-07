module ApplicationHelper
  def stylesheet_file
    "bootstrap4_rails/network_for_good/#{requested_interface_folder}/application"
  end

  # Allow an argument to be passed in for stylesheet changes in feature specs
  def feature_spec_stylesheet_file(interface:)
    "bootstrap4_rails/network_for_good/#{interface}/application"
  end

  def feature_spec_stylesheet_interface
    'public'
  end

  private

  def requested_interface_folder
    if params[:stylesheet] == 'public' || params[:stylesheet].nil?
      'public'
    else
      params[:stylesheet]
    end
  end

  def body_css_classes
    [controller_path.split('/').each { |c| c << "-controller" }.join(' '), "#{action_name}-action"].join(' ')
  end
end
