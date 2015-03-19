require 'terminfo'

class Keynote
  def initialize
    @all_slides = []
  end 
end

class Slide
    def initialize
      @str = IO.readlines("keynote.txt")
    end

    def center
      @str.each do |line|
        line = line.chomp
        if line != "----"
          self.height
          self.width(line)

          # NEXT STEP AFTER NEXT METHOD CREATION: create "each" that I control with next and previous
        end
      end
    end

    def next
      # Take in next element from Array

    end

    def width(slide)
      spaces_wide = (TermInfo.screen_size[1] - slide.length) / 2
      puts " " * spaces_wide + slide
    end

    def height
      spaces_tall = (TermInfo.screen_size[0] - 1) / 2
      puts "\n" * spaces_tall 
    end
end


slide = Slide.new

slide.center

command = gets.chomp
if command == "next"
  puts String.next


# Console Keynote #

# text will be centered, horizontally and vertically
# next prompt will go to next slider
# previous prompt will go to previous slide

# take vertical line number, subtract 1 line, and divide by 2. floating point will round down. 
# take horizontal character numbers, subtract string.length, and divide by 2. float will round down. 