require_relative '../../db/config'

class Legislator < ActiveRecord::Base

  def name
    if self.nickname == ''
      "#{self.title}. #{self.firstname} #{self.lastname} (#{self.party})"
    else
      "#{self.title}. #{self.firstname} \"#{self.nickname}\" #{self.lastname} (#{self.party})"
    end
  end

end
