module Web::Controllers::Signup
  class Index
    include Web::Action

    expose :flash_errors

    def call(params)
      @flash_errors = flash[:errors]
    end
  end
end
