module Web::Controllers::Games
  class Show
    include Web::Action

    expose :game
    expose :comments

    def call(params)
      game_repo = GameRepository.new
      @game = game_repo.find(params[:id])
      comments_repo = CommentRepository.new
      @comments = comments_repo.find_comments_for_game(game)
    end
  end
end
