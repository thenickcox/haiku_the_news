class CreatePoems < ActiveRecord::Migration
  def change
    create_table :poems do |t|
      t.string :headline
      t.string :article_url
      t.string :byline
      t.string :image_url
      t.string :source
      t.timestamps
    end
  end
end
