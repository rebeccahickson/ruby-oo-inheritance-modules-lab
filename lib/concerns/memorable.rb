module Memorable
  module ClassMethods
    def reset_all
      all.clear
    end

    # rubocop:disable Rails/Delegate
    def count
      all.count
    end
  end
  # rubocop:enable Rails/Delegate
  module InstanceMethods
    def initialize
      self.class.all << self
    end
  end
end
