require 'spec_helper'
require_relative '../../../../apps/web/controllers/session/login'

describe Web::Controllers::Session::Login do
  let(:action) { Web::Controllers::Session::Login.new }
  let(:params) { Hash[] }

  it 'is successful' do
    response = action.call(params)
    response[0].must_equal 200
  end
end
