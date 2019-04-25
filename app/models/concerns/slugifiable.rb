module Slugifiable
  module InstanceMethods
    def slug
      name.downcase.gsub(/[^a-z0-9]/, '-')
    end
  end

  module ClassMethods
    def find_by_slug(slug)
      all.find { |s| s.slug == slug }
    end
  end
end
