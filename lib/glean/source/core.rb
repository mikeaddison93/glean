module Glean
  module Source
    module Core
      def self.search(query)
        query = "" if query.nil?
        Octokit.organization_repositories('glean').select do |repo|
          "#{repo.name} #{repo.description}".include?(query) unless repo.name =~ /^glean.*$/
        end
      end
    end
  end
end
