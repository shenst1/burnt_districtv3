# This migration comes from cmsify (originally 20170405151225)
class CreateCmsifyTables < ActiveRecord::Migration[5.0]
  def change
    create_table :cmsify_tables do |t|
    end

    create_table :cmsify_assets do |t|
      t.string   :attachment
      t.string   :attachable_type
      t.integer  :attachable_id
      t.integer  :height
      t.integer  :width
      t.integer  :rank
      t.string   :state,           default: "active"
      t.string   :content_type
      t.integer  :size
      t.timestamps null: false
      t.index [:attachable_type, :attachable_id]
    end

    create_table :cmsify_attacheds do |t|
      t.string  :type
      t.integer :asset_id
      t.string  :attachable_type
      t.integer :attachable_id
      t.integer :rank
      t.string  :state
      t.timestamps null: false
      t.index [:asset_id]
      t.index [:attachable_type, :attachable_id]
    end

    create_table :cmsify_collections do |t|
      t.string   :name
      t.string   :object_id
      t.string   :type
      t.integer  :rank
      t.string   :state
      t.integer  :collection_id
      t.string   :slug
      t.boolean  :apply_access_rules, default: false
      t.timestamps null: false
      t.index [:collection_id]
      t.index [:object_id]
      t.index [:slug, :type]
    end

    create_table :cmsify_collects do |t|
      t.integer :collection_id
      t.string  :collectible_type
      t.integer :collectible_id
      t.integer :rank
      t.string  :state
      t.timestamps null: false
      t.index [:collectible_type, :collectible_id]
      t.index [:collection_id]
    end

    create_table :cmsify_items do |t|
      t.string  :name
      t.string  :type
      t.string  :tagline
      t.string  :author
      t.string  :url
      t.text    :body,  limit: 65535
      t.integer :rank
      t.string  :state
      t.datetime :published_at
      t.text     :excerpt,      limit: 65535
      t.string  :citation
      t.timestamps null: false
    end
  end
end
