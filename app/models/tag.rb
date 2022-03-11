class Tag < ApplicationRecord
    has_many :post_tags, dependent: :destroy #dependent: :destroyでtagを削除したときに中間テーブルからも削除
    has_many :posts, through: :post_tags
end
