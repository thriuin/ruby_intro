# My take on the Ruby 20 minute tutorial from https://www.ruby-lang.org/en/documentation/quickstart/

class Heyer
  def initialize(name = "you")
    @names = name
  end
  def sup
    if @names.nil?
      puts "..."
    elsif @names.respond_to?("each")
      # @names is a list of some kind, iterate!
      @names.each do |name|
        puts "Hey #{name}!"
      end
    else
      puts "Hey #{@names}!"
    end
  end
  def l8r
    if @names.nil?
      puts "..."
    elsif @names.respond_to?("join")
      # Join the list elements with commas
      puts "Later #{@names.join(", ")}. See ya soon!"
    else
      puts "Later #{@names}. See ya soon!"
    end
  end
  attr_accessor :names
end

if __FILE__ == $0
  hy = Heyer.new
  hy.sup
  hy.l8r

  # Change name to be "Zeke"
  hy.names = "Zoe"
  hy.sup
  hy.l8r

  # Change the name to an array of names
  hy.names = ["Jacques", "Belinda", "Gary", "Danielle", "Marc"]
  hy.sup
  hy.l8r
end