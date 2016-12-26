require 'spec_helper'
require_relative '../../../../apps/web/controllers/login/index'

describe Web::Controllers::Login::Index do
  let(:action) { Web::Controllers::Login::Index.new }
  let(:params) { Hash[] }

  it 'is successful' do
    response = action.call(params)
    response[0].must_equal 200
  end
end
