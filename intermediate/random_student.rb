class VolunteerStudent

  students = ["Cindy","Jan","Marsha","Greg","Peter","Bobby"]

  attr_reader :students, :selected

  def initialize(students)
    @students = students
    @selected  = []
  end

  def random_student(input,count)
    input.sample(count)
  end

  def match?
    @result.any?{|name| selected.include?(name)}
  end

  def track_students
    @result.each{|x| selected.unshift(x)}
  end

  def make_selection
    @result = random_student(students,2)
    if match?
      while match?
        @result = random_student(students,2)
      end
    end
    track_students
    clear_selection
    print_results
  end

  def clear_selection
    selected.clear if selected.length == students.length
  end

  def print_results
    puts "#{@result[0]} and #{@result[1]} were selected to participate in the whiteboard exercise "
  end
end
