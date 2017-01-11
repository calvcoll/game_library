module Web::Controllers::Games
  class Create
    include Web::Action

    expose :flash_errors

    params do
      required(:game).schema do
        required(:title).filled(:str?)
        required(:info).filled(:str?)
      end
    end

    def call(params)
      puts params[:game]
      if params.valid?
        repo = GameRepository.new
        repo.create(params[:game])
        redirect_to routes.game_path
      else
        flash[:errors] = @flash_errors = "Game information invalid!"
      end
    end
  end
end
