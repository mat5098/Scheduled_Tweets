class CreateTweets < ActiveRecord::Migration[7.0]
  def change
    create_table :tweets do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :twitter_acount, null: false, foreign_key: true
      t.text :body
      t.datetime :publish_at
      t.string :tweet_id

      t.timestamps
    end
  end
end
