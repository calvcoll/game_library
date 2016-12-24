class UserRepository < Hanami::Repository

  def find_user_by_name(username)
    users
      .where(username: username)
      .one
  end

end
