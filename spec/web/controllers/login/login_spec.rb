require 'spec_helper'
require_relative '../../../../apps/web/controllers/login/login'

describe Web::Controllers::Login::Login do
  let(:action) { Web::Controllers::Login::Login.new }
  let(:params) { Hash[] }

  it 'is successful' do
    response = action.call(params)
    response[0].must_equal 200
  end
end
