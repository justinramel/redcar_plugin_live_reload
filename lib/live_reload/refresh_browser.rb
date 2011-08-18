module Redcar
  class LiveReload 
    class RefreshBrowser < Redcar::Task
      def initialize(project)
        @project = project
      end

      def description
        "refresh browser"
      end

      def execute
        keyword = storage['keyword']
        run_chrome_script(keyword)
      end

      private
      def storage
        @storage ||= Plugin::Storage.new('live_reload_plugin')
        @storage.set_default('keyword', '')
        @storage
      end

      def run_chrome_script(keyword)
        %x{osascript<<ENDGAME
          tell application "Google Chrome"
            set windowList to every window
            repeat with aWindow in windowList
              set tabList to every tab of aWindow
              repeat with atab in tabList
                if (URL of atab contains "#{keyword}") then
                  tell atab to reload
                end if
              end repeat
            end repeat
          end tell
ENDGAME
}
      end
    end
  end
end