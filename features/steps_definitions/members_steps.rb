Dado /^que existe el miembro "(.*?)"$/ do |nombre|
  Member.new(:name => nombre).save!
end







