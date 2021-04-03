class Post < ApplicationRecord
    validates :title, :image_url, :content, presence: true
    before_save :replace_word

    def replace_word
        self.content = self.content.gsub "spoiler", " "
    end

end

