class UserRepository < Hanami::Repository

  associations do
    has_many :games_owneds
  end

  def find_user_by_name(username)
    users
      .where(username: username)
      .one
  end

end
