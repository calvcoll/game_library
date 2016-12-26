require 'spec_helper'
require_relative '../../../../apps/web/controllers/logout/logout'

describe Web::Controllers::Logout::Logout do
  let(:action) { Web::Controllers::Logout::Logout.new }
  let(:params) { Hash[] }

  it 'is successful' do
    response = action.call(params)
    response[0].must_equal 200
  end
end
