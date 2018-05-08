require 'nokogiri'
require 'open-uri'
require 'pry'
<<<<<<< HEAD
 
=======
>>>>>>> 33d4ab773d23a809989c7853de8ea01c31e48770
require_relative './course.rb'
 
class Scraper
 
  def get_page
     doc = Nokogiri::HTML(open("http://learn-co-curriculum.github.io/site-for-scraping/courses"))
   end
  
<<<<<<< HEAD
  def get_courses
     get_page.css(".post")
  end
  
  def make_courses 
    get_courses.each do |post|
      course = Course.new
      course.title = post.css("h2").text
      course.schedule = post.css(".date").text
      course.description = post.css("p").text
    end
  end 


 def print_courses
=======
  def get_page
     doc = Nokogiri::HTML(open("http://learn-co-curriculum.github.io/site-for-scraping/courses"))
        binding.pry

  end
  
    def print_courses
>>>>>>> 33d4ab773d23a809989c7853de8ea01c31e48770
    self.make_courses
    Course.all.each do |course|
      if course.title
        puts "Title: #{course.title}"
        puts "  Schedule: #{course.schedule}"
        puts "  Description: #{course.description}"
      end
    end
  end
  
<<<<<<< HEAD
  end 

Scraper.new.print_courses
=======
end


Scraper.new.get_page
>>>>>>> 33d4ab773d23a809989c7853de8ea01c31e48770
