module Slugifiable
  module InstanceMethods
    def slug
      self.name.downcase.strip.gsub(' ','-').gsub(/[^\w-]/, '')
    end
  end

  module ClassMethods
    def find_by_slug(slug)
      self.all.detect{ |mod| mod.slug == slug}
    end
  end
end
