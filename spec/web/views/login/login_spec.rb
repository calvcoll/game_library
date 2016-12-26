require 'spec_helper'
require_relative '../../../../apps/web/views/login/login'

describe Web::Views::Login::Login do
  let(:exposures) { Hash[foo: 'bar'] }
  let(:template)  { Hanami::View::Template.new('apps/web/templates/login/login.html.erb') }
  let(:view)      { Web::Views::Login::Login.new(template, exposures) }
  let(:rendered)  { view.render }

  it 'exposes #foo' do
    view.foo.must_equal exposures.fetch(:foo)
  end
end
