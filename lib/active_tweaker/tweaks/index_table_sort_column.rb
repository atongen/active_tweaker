module ActiveTweaker
  module Tweaks

    module IndexTableSortColumn

      def sortable_on(column)
        column 'Sort', :sortable => column do |a|
          link_to '&equiv;'.html_safe, '#drag', :class => 'sort-handle'
        end
      end

    end

    module CollectionSortAction

      def sort_collection_on(column)
        collection_action :sort, :method => :post do
          inst = ActiveSupport::Inflector.underscore(resource_class)
          resource_class.update_all ['position = FIND_IN_SET(id, ?)', params[inst].join(',')], { :id => params[inst] }
          head 200
        end
      end

    end

  end
end