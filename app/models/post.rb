class Post < ApplicationRecord
    include Discard::Model
    default_scope -> { kept }

    has_many :post_tags
    has_many :tags, through: :post_tags
end


