require 'active_support/inflector'
module Trakt
  class Trending < Cot::Frame
    property :watching

    def self.inherit_from(name)
      klass = "Trakt::#{name.to_s.classify}".constantize

      property name do
        value do |params|
          klass.new params
        end
      end

      klass.added_methods.each do |method_name|
        define_method method_name do
          self.send(name).send method_name
        end
      end

      klass.attr_methods.each do |method_name|
        define_method method_name do
          self.send(name).send method_name
        end
      end
    end
  end
end
