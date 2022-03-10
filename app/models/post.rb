class Post < ApplicationRecord
    include Discard::Model

    has_many :post_tags
    has_many :tags, through: :post_tags
end


