# You can use a global variable, DB, built as is:
# DB = SQLite3::Database.new("../02-SQL-CRUD/db/posts.db")

class Post
  # TODO: implement some reader and/or writers
  attr_reader :id, :date, :votes
  attr_accessor :title, :url

  def initialize(options = {})
    # TODO: initialize instance variables from the hash options.
    @id = options[:id]
    @title = options[:title]
    @url = options[:url]
    @date = Time.now
    options[:date].nil? ? @date = Time.now : @date = options[:date]
    options[:votes].nil? ? @votes = 0 : @votes = options[:votes]
  end

  # TODO: implement all the class methods and instance methods
  #       to have a full CRUD support on your Post model

  def save
    if @id.nil?
      time_as_integer = @date.to_i
      DB.execute("INSERT INTO posts (title, url, date, votes)
      VALUES ('#{@title}', '#{@url}', '#{time_as_integer}', '#{@votes}');")
      @id = DB.last_insert_row_id
    else
      DB.execute("UPDATE posts
      SET title = '#{@title}', url = '#{@url}', votes = '#{votes}'
      WHERE id = #{@id}
      ;")
     end
   end

  def upvote
    @votes += 1
  end

  def self.all
    tab = DB.execute("SELECT * FROM posts;")
    posts = tab.map do |post|
      Post.new({id: post[0].to_i, title: post[1].to_s, url: post[2].to_s, date: Time.at(post[3]), votes: post[4].to_i})
      end
    return posts
  end

  def self.find(id)
    tab = DB.execute("SELECT * FROM posts WHERE id = #{id};").flatten
    if tab.first.nil?
      post = nil
    else
      id = tab[0]
      title = tab[1]
      url = tab[2]
      date = tab[3]
      votes = tab[4]
      post = Post.new({title: title, url: url, id: id, date: date, votes: votes})
    end
    return post
  end



  def destroy
    DB.execute("DELETE FROM posts WHERE id = #{@id};")
  end

end


# post = Post.find(1)
# post.title = "dedede"
# post.save
