require 'singleton'

module TitanControl
  class AdminMenu
    include Singleton

    class << self

      def menu(&block)
        menu = instance.instance_variable_get(:@menu)
        if block_given?
          if block.arity == 1
            yield(menu)
          else
            menu.instance_eval(&Proc.new)
          end
        end
        menu
      end

      def method_missing(method, *args, &block)
        if menu.respond_to?(method)
          menu.send(method, *args, &block)
        else
          super
        end
      end

    end

    attr_reader :menu

    def initialize
      @menu = Item.new(:admin_menu)
    end


    class Item
      attr_reader :items
      attr_writer :label
      attr_accessor :url, :priority

      def initialize(id, options={})
        @id = id
        @items = {}
        update_attributes(options)
      end

      def update_attributes(options={})
        @url = options.delete(:url)
        @label = options.delete(:label)
        @priority = options.delete(:priority) || 10
      end

      def id
        @id.to_sym
      end

      def label
        @label || id.to_s.titleize
      end

      def item(id, options={}, &block)
        item = items[id]
        if item
          item.update_attributes(options)
        else
          item = Item.new(id, options)
        end

        if block_given?
          if block.arity == 1
            yield(item)
          else
            item.instance_eval(&Proc.new)
          end
        end

        @items[item.id] = item
      end

      def items_sorted
        items.sort{|a,b| a[1].priority <=> b[1].priority }
      end

      def [](id)
        items[id]
      end

      def delete(id)
        items.delete(id)
      end

    end

  end
end
