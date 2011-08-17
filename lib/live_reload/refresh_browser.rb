module Redcar
  class LiveReload
    class RefreshBrower < Command
      def execute
        Application::Dialog.message_box("hello redcar!")
      end
    end
  end
end