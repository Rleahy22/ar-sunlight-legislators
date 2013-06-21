require_relative 'models/legislator'

def by_state(state)
 legislators = []
 legislators << "Senators:"
 legislators << Legislator.where(:state => state, :title => "Sen", :in_office => 1).map { |element| element.name}
 legislators << "Representatives:"
 legislators << Legislator.where(:state => state, :title => "Rep", :in_office => 1).map { |element| element.name}
end

def by_gender(gender)
  if gender == 'M'
    gender_string = 'Male'
  elsif gender == 'F'
    gender_string = 'Female'
  end
  
  senators = Legislator.where(:gender => gender, :title => "Sen", :in_office => 1).count
  senators_total = Legislator.where(:title => "Sen", :in_office => 1).count
  sen_percent = ((senators / senators_total.to_f) * 100).round(0)
  reps = Legislator.where(:gender => gender, :title => "Rep", :in_office => 1).count
  reps_total = Legislator.where(:title => "Rep", :in_office => 1).count
  rep_percent = ((reps / reps_total.to_f) * 100).round(0)
  str = "#{gender_string} Senators: #{senators} (#{sen_percent}%)\n#{gender_string} Representatives: #{reps} (#{rep_percent}%)"
end

def by_state
  fish_filet = Legislator.where(:in_office => 1, :title => ["Rep", "Sen"]).group(:state).group(:title).count('title').each_slice(2).map do |ball_so_hard, emmeffers_try_to_find_me|
    [ball_so_hard[0][0], emmeffers_try_to_find_me.last, ball_so_hard.last]
  end
  fish_filet.sort_by! {|x| x.last}.reverse!
  fish_filet.each

end

# puts by_state("NY")
# puts by_gender("F")
by_state
