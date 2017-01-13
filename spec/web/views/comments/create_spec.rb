require 'spec_helper'
require_relative '../../../../apps/web/views/comments/create'

describe Web::Views::Comments::Create do
  let(:exposures) { Hash[foo: 'bar'] }
  let(:template)  { Hanami::View::Template.new('apps/web/templates/comments/create.html.erb') }
  let(:view)      { Web::Views::Comments::Create.new(template, exposures) }
  let(:rendered)  { view.render }

  it 'exposes #foo' do
    view.foo.must_equal exposures.fetch(:foo)
  end
end
