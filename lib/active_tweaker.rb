require 'active_admin'
require 'active_admin_editor'
require 'awesome_nested_fields'
require 'chosen-rails'
require 'jquery-rails'

require 'active_tweaker/version'

module ActiveTweaker

  require 'active_tweaker/engine'

  require 'active_tweaker/tweaks/index_table_sort_column'
  ::ActiveAdmin::Views::IndexAsTable.send :include, ActiveTweaker::Tweaks::IndexTableSortColumn
  ::ActiveAdmin::ResourceDSL.send :include, ActiveTweaker::Tweaks::CollectionSortAction

end