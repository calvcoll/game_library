require 'spec_helper'
require_relative '../../../../apps/web/views/session/signup'

describe Web::Views::Session::Signup do
  let(:exposures) { Hash[foo: 'bar'] }
  let(:template)  { Hanami::View::Template.new('apps/web/templates/session/signup.html.erb') }
  let(:view)      { Web::Views::Session::Signup.new(template, exposures) }
  let(:rendered)  { view.render }

  it 'exposes #foo' do
    view.foo.must_equal exposures.fetch(:foo)
  end
end
