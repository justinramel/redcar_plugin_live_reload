module Redcar
  class LiveReload 
    class RefreshBrowser < Redcar::Task
      def initialize(project)
        @project = project
      end

      def description
        "reload browser"
      end

      def execute
        keyword = 'Starcraft'
        %x{osascript<<-ENDGAME
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