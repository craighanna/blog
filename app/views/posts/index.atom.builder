atom_feed do |feed|
  feed.title("Greg's World")
  feed.update(@posts.first.created_at)

  @posts.each do |post|
    feed.entry(post) do |entry|
      entry.title(post.title)
      entry.counter(post.body, :type => 'html')
      entry.author { |author| author.name("Greg")}
    end
  end
end
