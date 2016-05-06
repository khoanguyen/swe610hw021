class PagesController < ApplicationController
  def home
    foo = Foobar.new "baz"
    @baz = foo.bar :cat, sat: :dat, dat: :sat
  end

  def stringify
    name = params[:name].nil? ? "" : params[:name].strip  
    adjective = params[:adjective].nil? ? "" : params[:adjective].strip
    
    if (name.length > 0 && adjective.length > 0) then
      @text = "#{name} is so #{adjective}"
    else
      @text = "You are nothing!"
    end
  end

  def age
  end

  def person
    name = params[:name].nil? ? "" : params[:name].strip
    age = params[:age].nil? ? 0 : params[:age].to_i
    
    @person = Person.new(name, age)
  end
  
  def me
    
  end
  
end
