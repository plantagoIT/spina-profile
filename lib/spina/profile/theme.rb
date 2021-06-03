module Spina
  module Profile

    module Theme
      attr_accessor :setup_fields
    end
  end
end

Spina::Theme.include Spina::Profile::Theme