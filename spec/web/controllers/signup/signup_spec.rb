require 'spec_helper'
require_relative '../../../../apps/web/controllers/signup/signup'

describe Web::Controllers::Signup::Signup do
  let(:action) { Web::Controllers::Signup::Signup.new }
  let(:params) { Hash[] }

  it 'is successful' do
    response = action.call(params)
    response[0].must_equal 200
  end
end
