require 'bcrypt'
module Web::Controllers::Signup
  class Signup
    include Web::Action

    expose :user

    params do
      required(:user).schema do
        required(:username).filled(:str?)
        required(:password).filled(:str?)
      end
    end

    def get_hashed_pw(password)
      BCrypt::Password.create(password)
    end

    def call(params)
      if params.valid?
        repo = UserRepository.new
        if (repo.find_user_by_name(params[:user][:username]).nil?)
          pass = get_hashed_pw(params[:user][:password])
          @user = repo.create(username: params[:user][:username], password: pass)
          redirect_to routes.login_path
        end
        flash[:errors] = @errors = "Username exists!"
        redirect_to request.referrer
      else
        self.status = 422
      end
    end
  end
end
