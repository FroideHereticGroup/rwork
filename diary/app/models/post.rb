class Post < ApplicationRecord
  has_many :comments, dependent: :destroy
  #dependentオプションをおくことで、投稿と一緒にコメントも削除される
  validates :title, presence: true
  validates :text, presence: true
end
