class CreateShortenedUrls < ActiveRecord::Migration[7.0]
  def change
    create_table :shortened_urls do |t|
      t.string :long_url
      t.string :short_url
      t.references :user, null: false, foreign_key: true


      t.timestamps
    end
  end
end
