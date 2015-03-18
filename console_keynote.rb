require 'terminfo'

class Keynote
  def initialize
    @all_slides = []
  end

  def add_slides(slides)
    @all_slides.push(slides)
  end

  def presentation
    puts @all_slides
  end
end

class Slide
attr_accessor :width
attr_accessor :height

  def initialize    
    @width = width
    @height = height
    TermInfo.screen_size[0] = height
    TermInfo.screen_size[1] = width
  end

  def show_me_the_money
    puts @height
    puts @width
  end
end

# p TermInfo.screen_size

# puts TermInfo.screen_size[0] 

slide = Slide.new
slide.show_me_the_money









# Console Keynote #

# text will be centered, horizontally and vertically
# next prompt will go to next slider
# previous prompt will go to previous slide

# take vertical line number, subtract 1 line, and divide by 2. floating point will round down. 
# take horizontal character numbers, subtract string.length, and divide by 2. float will round down. 