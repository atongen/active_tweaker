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
          params[inst].each_with_index do |id, i|
            resource_class.find(id.to_i).update_attribute :position, i
          end
          head 200
        end
      end

    end

  end
end