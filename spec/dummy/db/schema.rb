ActiveRecord::Schema.define do
  create_table :posts, force: true do |t|
    t.string :title
    t.string :content
    t.timestamps
  end
end
