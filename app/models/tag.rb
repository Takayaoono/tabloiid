class Tag < ApplicationRecord
    has_many :Post_tags
    has_many :posts, through: :post_tags
end
