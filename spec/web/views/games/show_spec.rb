require 'spec_helper'
require_relative '../../../../apps/web/views/games/show'

describe Web::Views::Games::Show do
  let(:exposures) { Hash[foo: 'bar'] }
  let(:template)  { Hanami::View::Template.new('apps/web/templates/games/show.html.erb') }
  let(:view)      { Web::Views::Games::Show.new(template, exposures) }
  let(:rendered)  { view.render }

  it 'exposes #foo' do
    view.foo.must_equal exposures.fetch(:foo)
  end
end
