require 'spec_helper'
require_relative '../../../../apps/web/views/login/index'

describe Web::Views::Login::Index do
  let(:exposures) { Hash[foo: 'bar'] }
  let(:template)  { Hanami::View::Template.new('apps/web/templates/login/index.html.erb') }
  let(:view)      { Web::Views::Login::Index.new(template, exposures) }
  let(:rendered)  { view.render }

  it 'exposes #foo' do
    view.foo.must_equal exposures.fetch(:foo)
  end
end
