module AllowBrowser
  extend ActiveSupport::Concern

  included do
    before_action :check_browser_compatibility
  end

  private

  def check_browser_compatibility
    unless browser_supported?
      render file: 'public/406-unsupported-browser.html', status: :not_acceptable
    end
  end

  def browser_supported?
    supported_browsers = /Chrome|Firefox|Safari|Edge|Arc|Brave|Opera|Vivaldi/
    request.user_agent.match(supported_browsers)
  end
end

ActionController::Base.include(AllowBrowser)