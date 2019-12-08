class Blog < ApplicationRecord
    validates :title, presence: true
    #(varidates :title)でtitleにバリデーション設定
    #(presence :true)で値が空なのを禁止
end
