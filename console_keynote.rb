require 'terminfo'

class Keynote
  def initialize
    @all_slides = []
  end 
end

class Slide
@str = IO.readlines("keynote.txt")

    def center
      # @str.each do |line|
      #   if @str != "----"
      #     puts "#{@str} + #{@spaces_wide} + #{@spaces_tall}"
      #   end
    end

    def width
      @str = IO.readlines("keynote.txt")
      @spaces_wide = (TermInfo.screen_size[1] - @str[0].length) / 2
      puts "a" * spaces_wide + @str[0]
    end

    def height
      @str = IO.readlines("keynote.txt")
      @spaces_tall = (TermInfo.screen_size[0] - 1) / 2
      puts "\n" * spaces_tall 
    end
end


slide = Slide.new

slide.height

slide.width


slide.center



# Console Keynote #

# text will be centered, horizontally and vertically
# next prompt will go to next slider
# previous prompt will go to previous slide

# take vertical line number, subtract 1 line, and divide by 2. floating point will round down. 
# take horizontal character numbers, subtract string.length, and divide by 2. float will round down. 