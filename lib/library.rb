class Library
  attr_accessor :collection

  def initialize
    @collection = YAML.load_file('./lib/data.yml')
  end

  def search_by_title(book_title)
    collection.detect { |book| book[:item][:title].include? book_title }
  end

  def search_by_author(book_author)
    collection.detect { |book| book[:item][:author].include? book_author }
  end
end
