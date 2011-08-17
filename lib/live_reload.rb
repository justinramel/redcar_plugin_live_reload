require 'live_reload/refresh_browser'

module Redcar
  class LiveReload

    def self.menus
      Menu::Builder.build do
        sub_menu "Plugins" do
          item "Live Reload", LiveReloadCommand
        end
      end
    end

    def self.project_refresh_task_type
      RefreshBrowser  
    end
  end

  class LiveReloadCommand < Redcar::Command
    def execute
      Redcar::LiveReload::RefreshBrowser.new.execute
    end
  end

end