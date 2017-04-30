class AddAltTitleTextToCmsifyAttacheds < ActiveRecord::Migration[5.0]
  def change
    add_column :cmsify_attacheds, :alt_title_text, :string
  end
end
