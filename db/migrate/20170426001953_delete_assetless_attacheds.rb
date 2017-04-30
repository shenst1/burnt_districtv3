class DeleteAssetlessAttacheds < ActiveRecord::Migration[5.0]
  def up
    Cmsify::BaseAttached.all.each do |attached|
      attached.destroy unless attached.asset.present?
    end
  end
  def down

  end
end
