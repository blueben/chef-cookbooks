#
# Overcommit pre-commit hook: foodcritic

module Overcommit
  module Hook
    module PreCommit
      # Run foodcritic to lint our commit
      class Foodcritic < Base
        def run
          begin
            require 'foodcritic'
          rescue LoadError
            return :stop, 'Ensure you have ChefDK installed'
          end

          paths = `git rev-parse --show-toplevel`.tr("\n", '')
          @options = { cookbook_paths: paths, tags: flags }

          linter = ::FoodCritic::Linter.new
          review = linter.check(@options)
          [(review.warnings.empty? ? :pass : :fail), review.to_s]
        end
      end
    end
  end
end
