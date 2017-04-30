class AddConfigurationToCmsifyCollections < ActiveRecord::Migration[5.0]
  def change
    add_column :cmsify_collections, :configuration_type, :integer, default: 0
  end
end
