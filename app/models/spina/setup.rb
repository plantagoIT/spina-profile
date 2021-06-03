module Spina
  class Setup < ApplicationRecord
    include AttrJson::Record
    # Check there is only one instance with attribute 'singleton_guard' set to 0
    validates_inclusion_of :singleton_guard, in: [0]

  class << self
    def instance
      first_or_create! singleton_guard: 0
      update_instance self.first
      self.first
    end
  end

  private
    # Take the current fields from the config an apply them
    def self.update_instance instance
      Spina::Current.account ||= ::Spina::Account.first
      Spina::Current.theme ||= ::Spina::Theme.find_by_name(Spina::Current.account.theme)
      Spina::Current.theme.setup_fields.each do |field|
        unless instance.methods.include? :"#{field}"
          attr_json :"#{field}", :string
        end
      end
    end
  end
end
