require 'spec_helper'
require_relative '../../../../apps/web/controllers/signup/index'

describe Web::Controllers::Signup::Index do
  let(:action) { Web::Controllers::Signup::Index.new }
  let(:params) { Hash[] }

  it 'is successful' do
    response = action.call(params)
    response[0].must_equal 200
  end
end
