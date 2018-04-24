require 'travis/cli'

module Travis
  module CLI
    class Debug < RepoCommand
      description "restart build in debug mode"

      def run(number = last_build.number)
        authenticate
        entity = build(number)
        error "could not find job #{repository.slug}##{number}" unless entity
        entity.restartDebug

        say "canceled", "#{entity.class.one} ##{entity.job_ids.last} has been %s"
      end
    end
  end
end
