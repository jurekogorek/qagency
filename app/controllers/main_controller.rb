class MainController < ApplicationController
  def index
    
  end
  
  def next
    if can_generate_next
      @code = KODY[Kod.next] 
      set_cookie(@code)
    else
      @code = cookies[:last]
    end
    respond_to do |f|
      f.js
    end
  end
  
  
  private
  def set_cookie(code)
    cookies[:codes] = cookies[:codes].to_i + 1
    cookies[:last] = code
  end
  
  def can_generate_next
    cookies[:codes].to_i < 5
  end
end
