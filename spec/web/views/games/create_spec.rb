require 'spec_helper'
require_relative '../../../../apps/web/views/games/create'

describe Web::Views::Games::Create do
  let(:exposures) { Hash[foo: 'bar'] }
  let(:template)  { Hanami::View::Template.new('apps/web/templates/games/create.html.erb') }
  let(:view)      { Web::Views::Games::Create.new(template, exposures) }
  let(:rendered)  { view.render }

  it 'exposes #foo' do
    view.foo.must_equal exposures.fetch(:foo)
  end
end
