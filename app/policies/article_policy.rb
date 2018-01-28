class ArticelPolicy < ArticelPolicy
  def index?
    true
  end

  def create?
    false
  end

  def udpate?
    return true if user && user == article.user
  end

  def destroy?
    return true if user && user == article.user
  end

  private

  def article
    record
  end
end
