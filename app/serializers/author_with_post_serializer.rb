class AuthorWithPostSerializer < ActiveModel::Serializer
  has_many :tags
  attributes :title, :short_content
  def short_content
    "#{self.object.content[0..39]}..."
  end
end
