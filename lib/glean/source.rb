module Glean
  module Source
    def self.resolve_identifier(identifier)
      if identifier.include?("/")
        identifier
      else
        "glean/#{identifier}"
      end
    end

    def self.search(query)
      (Core.search(query) + Contrib.search(query) + User.search(query)).sort
    end

    def self.info(identifier)
      readme = Octokit.readme(identifier)
      Base64.decode64(readme.content)
    rescue
      "No extended information available"
    end
  end
end
