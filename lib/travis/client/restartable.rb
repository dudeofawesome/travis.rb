require 'travis/client'

module Travis
  module Client
    module Restartable
      def restartable?
        true
      end

      def restart
        session.restart(self)
      end

      def cancelable?
        true
      end

      def cancel
        session.cancel(self)
      end

      def debuggable?
        true
      end

      def restartDebug
        session.restartDebug(self)
      end
    end
  end
end
