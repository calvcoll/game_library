module Web::Controllers::Comments
  class Create
    include Web::Action

    params do
      required(:comment).schema do
        required(:comment).filled(:str?)
        required(:game_id).filled(:int?)
      end
    end

    def call(params)
      if params.valid?
        game_id = params[:comment][:game_id]
        user = UserRepository.new.find_user_by_name(session[:username])
        last_game = GameRepository.new.last.id
        uid = nil
        if (user)
          uid = user.id
        end
        if (game_id <= last_game && uid)
          repo = CommentRepository.new
          repo.create(comment: params[:comment][:comment], user_id: uid, game_id: game_id)
          flash[:errors] = nil
        else
          flash[:errors] = "Incorrect Game or User ID"
        end
      else
        flash[:errors] = "Did you enter a comment?"
      end
        redirect_to(request.referrer)
    end
  end
end
