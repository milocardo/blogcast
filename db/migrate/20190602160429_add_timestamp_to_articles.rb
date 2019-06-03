class AddTimestampToArticles < ActiveRecord::Migration[5.1]
def change
  # add_timestamps :articles, null: true
  long_ago = DateTime.new(2019, 6, 2)
  Article.update_all(created_at: long_ago, updated_at: long_ago)
  change_column_null :articles, :created_at, false
  change_column_null :articles, :updated_at, false
end
end
