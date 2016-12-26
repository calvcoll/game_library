module Web::Controllers::Users
  class Index
    include Web::Action

    expose :users

    def call(params)
      repo = UserRepository.new
      @users = repo.all
    end
  end
end
