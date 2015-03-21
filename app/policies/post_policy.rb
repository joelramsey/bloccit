class PostPolicy < ApplicationPolicy 


  class Scope 
    def resolve 
      if user.admin? || user.moderator? 
      scope.all

      else
        scope.where(:uer_id => user.id)
      end
    end
  end 


  def index?
    user.admin? || user.id?
  end

end