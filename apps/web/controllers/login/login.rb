module Web::Controllers::Login
  class Login
    include Web::Action

    expose :user

    params do
      required(:user).schema do
        required(:username).filled(:str?)
        required(:password).filled(:str?)
      end
    end

    def call(params)
      if params.valid?
        if session[:username]
          session[:username] = nil
        else
          username = params[:user][:username]
          password = params[:user][:password]
          repo = UserRepository.new
          @user = repo.find_user_by_name(username)
          unless user.nil? or (password != user.password)
            session[:username] = username
          else
            self.status = 401
            flash[:errors] = @errors = "Incorrect Username or Password"
            redirect_to routes.login_path
          end
        end
        redirect_to request.referrer
      else
        self.status = 422
      end
    end
  end
end
