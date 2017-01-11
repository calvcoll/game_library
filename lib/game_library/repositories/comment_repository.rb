class CommentRepository < Hanami::Repository

  def find_comments_for_game(game)
    comments
      .where(game_id: game.id)
  end

  def find_comments_for_user(user)
    comments
      .where(user_id: user.id)
  end

end
