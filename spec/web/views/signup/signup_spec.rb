require 'spec_helper'
require_relative '../../../../apps/web/views/signup/signup'

describe Web::Views::Signup::Signup do
  let(:exposures) { Hash[foo: 'bar'] }
  let(:template)  { Hanami::View::Template.new('apps/web/templates/signup/signup.html.erb') }
  let(:view)      { Web::Views::Signup::Signup.new(template, exposures) }
  let(:rendered)  { view.render }

  it 'exposes #foo' do
    view.foo.must_equal exposures.fetch(:foo)
  end
end
