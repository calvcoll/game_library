require 'spec_helper'
require_relative '../../../../apps/web/controllers/session/signup'

describe Web::Controllers::Session::Signup do
  let(:action) { Web::Controllers::Session::Signup.new }
  let(:params) { Hash[] }

  it 'is successful' do
    response = action.call(params)
    response[0].must_equal 200
  end
end
