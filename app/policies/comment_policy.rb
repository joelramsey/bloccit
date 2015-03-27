class CommentPolicy < PostPolicy
  def create?
    user.present?
  end

  def new?
    create?
  end
end

